// ignore_for_file: unnecessary_type_check

import 'dart:io';

import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Repositories/VerCategoryRepository.dart';
import 'package:nsmtu_mobile/Data/Urls/AppUrls.dart';

class GetAccordionUseCase {
  final VerCategoryRepository _repository;

  GetAccordionUseCase(this._repository);
  Future call() async {

      var res=await _repository.getData();

  }
}
