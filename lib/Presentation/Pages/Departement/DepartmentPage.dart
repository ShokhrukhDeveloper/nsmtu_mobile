import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Controllers/DepartureController.dart';
import 'package:nsmtu_mobile/Presentation/Pages/Departement/DepartureLeaderInfoWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/AccordionWidget/AccordionWidget.dart';

import '../../Widgets/FooterWidget/FooterWidget.dart';
import '../../Widgets/TopBarWidget/TopBarWidget.dart';

class DeparturePage extends StatefulWidget {
  const DeparturePage({Key? key}) : super(key: key);

  @override
  State<DeparturePage> createState() => _DeparturePageState();
}

class _DeparturePageState extends State<DeparturePage> {

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DepartureController());
    return GetBuilder<DepartureController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const TopBar(),
                    const AccordionWidget(),

                    Obx(
                      () {
                        return controller.showDeparture.value? Column(children: [

                          DepartureLeaderInfoWidget(departure: controller.departure,),
                          // Html(data: controller.departure?.informationUz??""),
                        ],):const Padding(
                          padding: EdgeInsets.all(50.0),
                          child: CircularProgressIndicator.adaptive(),
                        );
                      }
                    ),

                    const FooterWidget()
                  ],
                ),
              ),
            ),
          ),


        );
      }
    );
  }
}
