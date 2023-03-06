import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Entities/Depature.dart';
import 'package:nsmtu_mobile/Data/Entities/ImageSlide.dart';
import 'package:nsmtu_mobile/Data/Entities/News.dart';
import 'package:nsmtu_mobile/Data/Entities/VerCategory.dart';
import 'package:nsmtu_mobile/Data/Repositories/AnnouncementReopsitory.dart';
import 'package:nsmtu_mobile/Data/Repositories/DepartureRepository.dart';
import 'package:nsmtu_mobile/Data/Repositories/ImageSildeRepositoy.dart';
import 'package:nsmtu_mobile/Data/Repositories/NewsRepository.dart';
import 'package:nsmtu_mobile/Data/Repositories/VerCategoryRepository.dart';


class HomeController extends GetxController{


  var showImageSlide=false.obs;




  late AnnouncementRepository announcementRepository;
  late ImageSlideRepository imageSlideRepository;





  static List<ImageSlide> _imageSlide=[];


  List<ImageSlide> get imageSlides=>_imageSlide;


 Future<void> getImageSlide()async{
try{
    var res = await imageSlideRepository.getData();
    var re= jsonDecode(res);
    if(re is List){
    _imageSlide=re.map((e) => ImageSlide.fromJson(e)).toList();
    showImageSlide(true);}
}catch (e){
  if (kDebugMode) {
    print(e);
  }
}

 }


  @override
  void onInit() {

    imageSlideRepository=ImageSlideRepository();
    // newsRepository=NewsRepository();
    super.onInit();
  }
  @override
  void onReady() {

      getImageSlide();
    super.onReady();
  }
}