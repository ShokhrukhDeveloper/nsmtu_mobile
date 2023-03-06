import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Entities/Depature.dart';
import 'package:nsmtu_mobile/Data/Entities/ImageSlide.dart';
import 'package:nsmtu_mobile/Data/Entities/VerCategory.dart';
import 'package:nsmtu_mobile/Data/Repositories/AnnouncementReopsitory.dart';
import 'package:nsmtu_mobile/Data/Repositories/DepartureRepository.dart';
import 'package:nsmtu_mobile/Data/Repositories/ImageSildeRepositoy.dart';
import 'package:nsmtu_mobile/Data/Repositories/VerCategoryRepository.dart';


class HomeController extends GetxController{
  var showAccordionMenu=false.obs;
  var showDeparture=false.obs;
  var showImageSlide=false.obs;
  late VerCategoryRepository verCategoryRepository;
  late DepartureRepository departureRepository;
  late AnnouncementRepository announcementRepository;
  late ImageSlideRepository imageSlideRepository;

  static List<VerCategory> _verCategories=[];
  static List<Depature> _departure=[];
  static List<ImageSlide> _imageSlide=[];
  List<VerCategory> get verCategories=>_verCategories;
  List<Depature> get departure=>_departure;
  List<ImageSlide> get imageSlides=>_imageSlide;
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
 Future<void> getAnnouncement()async{
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
    verCategoryRepository=VerCategoryRepository();
    departureRepository=DepartureRepository();
    imageSlideRepository=ImageSlideRepository();
    super.onInit();
  }
  @override
  void onReady() {
      getVerCategory();
      getDeparture();
      getImageSlide();
    super.onReady();
  }
}