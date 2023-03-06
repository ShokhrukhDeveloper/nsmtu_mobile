import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Routes/AppPages.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Bindings/HomeBinding.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Routes/AppRoutes.dart';
import 'package:nsmtu_mobile/Presentation/Pages/Home/HomePage.dart';

import 'Presentation/Pages/General/GeneralPage.dart';
import 'Presentation/Pages/SplashScreen/SplashScreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      title: 'Navoiy Davlat Konchilik va Texnologiylar Universeteti',
      theme: ThemeData(
        primaryColor: Colors.indigo
      ),
      initialBinding: HomeBinding(),
      home: const LimitedBox(
          maxWidth: 500,
          child: SplashScreen()),
      getPages: AppPages.pages,
    );
  }
}
/// 1st section
/// departure - jo'nab ketish
/// provisional -vaqtinchalik
/// more or less - deyarli
/// to be free to - Mumkin
/// operate up - olib borish
/// based in -joylashgan
/// actually - aslida
///
/// 2nd section
/// range - qator
/// pleased - mamnun
/// feature - aytib o'tmoq
/// fact - dalil
/// move around - aylantirish
/// matter - ahamiyatga ega bo'lmoq
/// concern - xavotir olmoq
/// unlikely - ishonish qiyin
/// put together - yig'moq
/// make difficult - qiyinchilik tug'dirmoq
/// pick up - ko'tarib olmoq
/// drop down - tushmoq
/// minor - ahamiyatsiz
/// niggle - Xavotirga solmoq
/// stuck on - yopishtirmoq
/// any way - nima bo'lgandayam
/// well informed risk - xatarsiz tavakkal
/// proportion of - miqdor
/// consequence - natijada
/// Rest - qolgani
/// such as - kabi