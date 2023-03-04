import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:nsmtu_mobile/Data/Entities/VerCategory.dart';
import 'package:nsmtu_mobile/Data/Repositories/ApiRepositoryBase.dart';
import 'package:nsmtu_mobile/Data/Repositories/VerCategoryRepository.dart';


class HomeController extends GetxController{
  var showAccordionMenu=false.obs;
  late VerCategoryRepository verCategoryRepository;
  static List<VerCategory> _verCategories=[];
  List<VerCategory> get verCategories=>_verCategories;
 Future<void> getVerCategory()async{
try{
    var res = await verCategoryRepository.getData();
    var re= jsonDecode(res);
    if(re is List){
    _verCategories=re.map((e) => VerCategory.fromJson(e)).toList();
    showAccordionMenu(true);
    }


}catch (e){
  if (kDebugMode) {
    print(e);
  }
}



 }

  @override
  void onInit() {
    verCategoryRepository=VerCategoryRepository();
    super.onInit();
  }
  @override
  void onReady() {
      getVerCategory();
    super.onReady();
  }
}