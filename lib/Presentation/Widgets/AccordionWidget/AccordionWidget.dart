import 'package:accordion/accordion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Data/Styles/AppTextStyle.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/AccordionWidget/AccordionContentButton.dart';

import 'AccordionHeaderWidget.dart';

class AccordionWidget extends StatelessWidget {
   AccordionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        boxShadow: const [
          BoxShadow(
            color: Colors.white54,
            blurRadius: 0.5,
            offset: Offset(0.3, 0.3),
            spreadRadius: 0.3
          )
        ]
      ),
      child: Accordion(
        paddingBetweenOpenSections: 0,
          paddingListBottom: 0,
          paddingListHorizontal: 0,
          paddingListTop: 0,
          paddingBetweenClosedSections:0,
          children: List.generate(6, (index) =>
              AccordionSection(
                onOpenSection: (){
                  debugPrint("Sosoodoososdodso");
                },
                flipRightIconIfOpen: true,
                rightIcon: Container(
                  height: 40,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black26)
                      )
                    ),

                    child: const Icon(Icons.keyboard_arrow_down_sharp)),
                contentBorderRadius: 0,
                contentBorderWidth: 0,
                headerBorderRadius: 0,
                headerBackgroundColorOpened: Colors.black12,
                headerPadding: EdgeInsets.zero,
                paddingBetweenClosedSections: 0,
                headerBackgroundColor: Colors.white,
          header: AccordionHeaderWidget(text: 'Asosiy',
            image:   Icon(Icons.adb_rounded,
            color: Theme.of(context).primaryColor,
            size: 36,
          ),),

          content: Column(
            children:  List.generate(5, (index) => AccordionContentButton(text: "",)),
          ))),
      ),
    );
  }
}
