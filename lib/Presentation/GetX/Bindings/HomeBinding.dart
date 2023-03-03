import 'package:get/get.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Controllers/HomeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}