import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/AccordionWidget/AccordionWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/AnnouncementWidget/AnnouncementWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/FooterWidget/FooterWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/ImageSlideshowWidget/ImageSlideshowWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/NewsWidget/NewsWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/TopBarWidget/TopBarWidget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children:  [
              const TopBar(),
              AccordionWidget(),
              const AnnouncementWidget(),
              const ImageSlideShowWidget(),
              const NewsWidget(),
              const FooterWidget()
            ],
          ),
        ),
      )
    );
  }
}
