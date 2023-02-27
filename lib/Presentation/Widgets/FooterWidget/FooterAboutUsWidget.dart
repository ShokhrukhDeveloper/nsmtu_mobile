import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Styles/AppTextStyle.dart';
class FooterAboutUsWidget extends StatelessWidget {
   FooterAboutUsWidget({Key? key}) : super(key: key);
String text="LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. ALIQUID ASPERNATUR ASSUMENDA BEATAE DIGNISSIMOS DOLOREM, DOLORES ERROR EX MOLESTIAS PARIATUR PERSPICIATIS PROVIDENT QUAS QUIDEM QUISQUAM SEQUI SUNT TEMPORA TEMPORE VEL VERITATIS.";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Biz haqimizda".toUpperCase(), style: AppTextStyle.styleFooterContactHeader,),
        const SizedBox(height: 5,),
         Flexible(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Text(text,
              style: AppTextStyle.styleFooterAboutUsContent,

                overflow: TextOverflow.clip,),
            ))
      ],
    );
  }
}
