import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Entities/Depature.dart';
import 'package:nsmtu_mobile/Data/Repositories/DepartureRepository.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Controllers/HomeController.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Routes/AppRoutes.dart';
import 'package:nsmtu_mobile/Presentation/Pages/Departement/DepartmentPage.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/DepartureWidget/DepartureItemWidget.dart';

class DepartureWidget extends StatefulWidget {
  const DepartureWidget({Key? key,}) : super(key: key);


  @override
  State<DepartureWidget> createState() => _DepartureWidgetState();
}

class _DepartureWidgetState extends State<DepartureWidget> {
  var showDeparture=false.obs;
  late DepartureRepository departureRepository;
  static List<Depature> _departure=[];
  Future<void> getDeparture()async{
    try{
      var res = await departureRepository.getData();
      var re= jsonDecode(res);
      if(re is List){
        _departure=re.map((e) => Depature.fromJson(e)).toList();
        showDeparture(true);}
    }catch (e){
      if (kDebugMode) {
        print(e);
      }
    }
  }
  @override
  void initState() {
    departureRepository=DepartureRepository();
    getDeparture();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: Colors.black12)),
      child: Obx(() => Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.blueAccent))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "Kafedralar",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              if (showDeparture.value)
                ..._departure
                    .map((e) => DepartureItemWidget(text: e.nameUz ?? "",onTap: ()=>Get.toNamed(AppRoutes.departure),))
                    .toList()
            ],
          )),
    );
  }
}
