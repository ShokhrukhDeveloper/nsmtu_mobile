import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Styles/AppTextStyle.dart';
class FooterContactWidget extends StatelessWidget {
  FooterContactWidget({Key? key,required this.items,required this.icon,required this.header}) : super(key: key);
  String header;
  Widget icon;
  List<String> items;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header.toUpperCase(), style: AppTextStyle.styleFooterContactHeader,),
        const SizedBox(height: 5,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map<Widget>((e) =>Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white)
                  ),
                    child: icon),
              const SizedBox(width: 5,),

                Flexible(child: Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Text(e,style: AppTextStyle.styleFooterContactContent,overflow: TextOverflow.clip,),
                )),
              ],
            ),
          ) ).toList(),
        )
      ],
    );
  }
}
