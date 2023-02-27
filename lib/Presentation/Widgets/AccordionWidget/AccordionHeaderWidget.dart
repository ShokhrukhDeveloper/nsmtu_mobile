import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Styles/AppTextStyle.dart';

class AccordionHeaderWidget extends StatelessWidget {
  String text;
  Widget image;
  AccordionHeaderWidget({Key? key,required this.text,required this.image}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        padding: const EdgeInsets.only(left: 10),
        width: double.infinity,
        decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black26),
              left: BorderSide(color: Colors.black26),
              // right: BorderSide(color: Colors.black26),

            )
        ),
        child:  Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
              image,
                const SizedBox(width: 5,),
                Text(text,style: AppTextStyle.styleHeaderAccordion ),
              ],
            )));
  }
}
