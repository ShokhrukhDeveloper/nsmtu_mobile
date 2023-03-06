import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/FooterWidget/FooterAboutUsWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/FooterWidget/FooterWidget.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/TopBarWidget/TopBarWidget.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({Key? key}) : super(key: key);

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TopBar(),
              Container(
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12)
                ),
                height:40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Talabalarga"),
                    SizedBox(width: 5,),
                    Icon(Icons.keyboard_double_arrow_right_outlined),
                    SizedBox(width: 5,),
                    Flexible(child: Text("NDKTUda ta'lim portali NDKTUda ta'lim portali",overflow: TextOverflow.ellipsis,)),
                  ],
                ),
              ),
              Html(data: "ht"),

              const FooterWidget()
            ],
          ),
          ),
        ),
      ),


    );
  }
}
