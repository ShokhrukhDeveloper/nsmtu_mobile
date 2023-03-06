import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Entities/Depature.dart';

import 'package:nsmtu_mobile/Data/Entities/VerCategory.dart';
import 'package:nsmtu_mobile/Data/Repositories/ApiRepositoryBase.dart';
import 'package:nsmtu_mobile/Data/Repositories/DepartureRepository.dart';
import 'package:nsmtu_mobile/Data/Repositories/VerCategoryRepository.dart';


class HomeController extends GetxController{
  var showAccordionMenu=false.obs;
  var showDeparture=false.obs;
  late VerCategoryRepository verCategoryRepository;
  late DepartureRepository departureRepository;
  static List<VerCategory> _verCategories=[];
  static List<Depature> _departure=[];
  List<VerCategory> get verCategories=>_verCategories;
  List<Depature> get departure=>_departure;
 Future<void> getVerCategory()async{

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
  void onInit() {
    verCategoryRepository=VerCategoryRepository();
    departureRepository=DepartureRepository();
    super.onInit();
  }
  @override
  void onReady() {
      getVerCategory();
      getDeparture();
    super.onReady();
  }
}