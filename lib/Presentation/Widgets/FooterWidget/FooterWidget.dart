import 'package:flutter/material.dart';


import 'FooterAboutUsWidget.dart';
import 'FooterContactWidget.dart';
class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      child: Wrap(
      alignment: WrapAlignment.start,
        children: [
          FooterContactWidget(
            header: 'Kontakt',
            items: [
              "+998 79 223 49 66",
              "info@ndki.uz",
              "Navoiy shahar, G'alabashox ko'cha",
            ],
            icon: const Icon(Icons.ac_unit_outlined, color: Colors.white,),
          ) ,
          const SizedBox(width: 10,height: 10,),
          FooterContactWidget(
            header: 'BIZNING IJTIMOIY TARMOQLAR',
            items: [
              "NDKTU telegram",
              "NDKTU instagram",
              "NDKTU facebook",
              "NDKTU youtube",
            ],
            icon: const Icon(Icons.apple, color: Colors.white,),
          ),
          const SizedBox(width: 10,height: 10,),
           FooterAboutUsWidget()
        ],
      ),
    );
  }
}
