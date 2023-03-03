// ignore_for_file: unnecessary_type_check

import 'dart:io';

import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Entities/VerCategories.dart';
import 'package:nsmtu_mobile/Data/Repositories/VerCategoryRepository.dart';
import 'package:nsmtu_mobile/Data/Urls/AppUrls.dart';

class GetAccordionUseCase {
  final VerCategoryRepository _repository;
  Rx<VerCategories?> data=Rx(null);
  GetAccordionUseCase(this._repository);
  Future call() async {
    try{
      var res=await _repository.getData(AppUrls.allVerCategory);
      print(res);
      if(res is VerCategories){
        data.value=res;
      }
    } catch (e){
      Get.snackbar(e.toString(), "");
    }


  }
}
