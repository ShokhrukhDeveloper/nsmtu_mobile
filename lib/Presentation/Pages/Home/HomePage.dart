import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Controllers/HomeController.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/AccordionWidget/AccordionWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/AnnouncementWidget/AnnouncementWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/DepartureWidget/DepartureWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/FooterWidget/FooterWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/ImageSlideshowWidget/ImageSlideshowWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/NewsWidget/NewsWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/RecommenedLinksWidget/RecommendedLinksWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/TopBarWidget/TopBarWidget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (cont) {
        return Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children:  [
                  const TopBar(),
                  const AccordionWidget(),
                  const DepartureWidget(),
                  const RecommendedLinksWidget(),
                  // const AnnouncementWidget(),
                   ImageSlideShowWidget(controller: cont,),
                   const NewsWidget(),
                  const FooterWidget()
                ],
              ),
            ),
          )
        );
      }
    );
  }
}
