import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Styles/AppTextStyle.dart';
class AccordionContentButton extends StatelessWidget {
   String text;
   VoidCallback? onTap;
    AccordionContentButton({Key? key, this.onTap, required this.text}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return SizedBox(
       height: 30,
       child: TextButton(
       style: const ButtonStyle(
           padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
         minimumSize: MaterialStatePropertyAll<Size>(Size.zero)
       ),
       onPressed: (){},
       child:  SizedBox(
           width: double.infinity,
           child: Text("Universitet tuzilmasi", style: AppTextStyle.styleContentAccordion,)),
     ) );
   }
 }
