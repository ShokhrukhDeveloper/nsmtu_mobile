import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Repositories/DepartureRepository.dart';

class DepartureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepartureRepository>(() => DepartureRepository());
  }
}