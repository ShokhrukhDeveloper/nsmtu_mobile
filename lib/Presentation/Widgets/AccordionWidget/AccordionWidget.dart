import 'dart:convert';

import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nsmtu_mobile/Data/Entities/VerCategory.dart';
import 'package:nsmtu_mobile/Data/Repositories/VerCategoryRepository.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Controllers/HomeController.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/AccordionWidget/AccordionContentButton.dart';
import 'package:get/get.dart';

import 'AccordionHeaderWidget.dart';

class AccordionWidget extends StatefulWidget {
  const AccordionWidget({Key? key}) : super(key: key);


  @override
  State<AccordionWidget> createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  late VerCategoryRepository verCategoryRepository;
  Future<void> getVerCategory()async{
    if(_verCategories.isNotEmpty){
      showAccordionMenu(true);
      return;
    }
    try{
      var res = await verCategoryRepository.getData();
      var re= jsonDecode(res);
      if(re is List){
        _verCategories=re.map((e) => VerCategory.fromJson(e)).toList();
        showAccordionMenu(true);}
    }catch (e){
      if (kDebugMode) {
        print(e);
      }
    }

  }
  var showAccordionMenu=false.obs;
  static List<VerCategory> _verCategories=[];

  @override
  void initState() {
    verCategoryRepository=VerCategoryRepository();
    getVerCategory();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // print(data);
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          boxShadow: const [
            BoxShadow(
                color: Colors.white54,
                blurRadius: 0.5,
                offset: Offset(0.3, 0.3),
                spreadRadius: 0.3)
          ]),
      child: Obx(() => showAccordionMenu.value
          ? Accordion(
              disableScrolling: true,
              paddingBetweenOpenSections: 0,
              paddingListBottom: 0,
              paddingListHorizontal: 0,
              paddingListTop: 0,
              paddingBetweenClosedSections: 0,
              children: _verCategories
                  .map<AccordionSection>((index) => AccordionSection(
                      scrollIntoViewOfItems: ScrollIntoViewOfItems.none,
                      flipRightIconIfOpen: true,
                      rightIcon: Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(color: Colors.black26))),
                          child: const Icon(Icons.keyboard_arrow_down_sharp)),
                      contentBorderRadius: 0,
                      contentBorderWidth: 0,
                      headerBorderRadius: 0,
                      headerBackgroundColorOpened: Colors.black12,
                      headerPadding: EdgeInsets.zero,
                      paddingBetweenClosedSections: 0,
                      headerBackgroundColor: Colors.white,
                      header: AccordionHeaderWidget(
                        text: index.verCategoryUz.toString(),
                        image: Image.network(
                          index.photo ?? "",
                          color: Theme.of(context).primaryColor,
                          width: 35,
                          height: 36,
                        ),
                      ),
                      content: Column(
                        children: index.versubcategoryUz
                                ?.map((i) => AccordionContentButton(
                                      text: i.subVercategoryUz.toString(),
                                    ))
                                .toList() ??
                            [],
                      )))
                  .toList(),
            )
          : const SizedBox()),
    );
  }
}
