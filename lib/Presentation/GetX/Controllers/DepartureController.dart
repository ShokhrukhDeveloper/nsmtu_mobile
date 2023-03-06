import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Entities/Depature.dart';
import 'package:nsmtu_mobile/Data/Repositories/DepartureRepository.dart';

class DepartureController extends GetxController {
  late DepartureRepository departureRepository;
  var showDeparture = false.obs;
  Depature? departure;
  Future<void> getData() async {
    try {
      var response = await departureRepository.getDataById(13);
      var result = jsonDecode(response);
      if (result is List) {
        departure = Depature.fromJson(result.single);
        showDeparture(true);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  void onInit() {
    departureRepository = DepartureRepository();
    getData();
    super.onInit();
  }
}
