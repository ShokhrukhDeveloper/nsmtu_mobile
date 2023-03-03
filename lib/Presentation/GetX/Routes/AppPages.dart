import 'package:get/get.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Routes/AppRoutes.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Bindings/HomeBinding.dart';
import 'package:nsmtu_mobile/Presentation/Pages/Home/HomePage.dart';

class AppPages{
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}