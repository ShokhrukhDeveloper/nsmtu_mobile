import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Styles/AppTextStyle.dart';

class DepartureItemWidget extends StatelessWidget {
  const DepartureItemWidget({Key? key, this.onTap, required this.text}) : super(key: key);
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
    decoration: const BoxDecoration(
      border: Border(bottom:BorderSide(color: Colors.blueAccent))
    ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Icon(Icons.arrow_forward_ios_outlined, size: 15,color: Colors.blueAccent,),
            Flexible(child: Text(text,style: AppTextStyle.styleDepartmentText,)),
          ],
        ),
      ),
    );
  }
}
