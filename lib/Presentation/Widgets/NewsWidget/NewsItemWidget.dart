import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Styles/AppTextStyle.dart';
class NewsItemWidget extends StatelessWidget {
   NewsItemWidget({Key? key}) : super(key: key);
String text="Navoiy davlat konchilik va texnologiyalar universiteti magistratura mutaxassisliklariga 2022/2023 Navoiy davlat konchilik va texnologiyalar universiteti magistratura mutaxassisliklariga 2022/2023 ";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width:  350,
      height: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black12),
        color: Colors.black12.withOpacity(0.1)
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network("https://picsum.photos/400/300",
              
              height: 250,width: double.infinity,fit: BoxFit.cover,),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
              text,
              style: AppTextStyle.styleNewsContent,
                overflow: TextOverflow.fade,
            ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0,left: 4.0,right: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.date_range,size: 20,),
                    const SizedBox(width: 5,),
                    Text("2023-02-16 15:14:20",style: AppTextStyle.styleNewsDate,),
                  ],
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: ConstrainedBox(
                      constraints: const BoxConstraints.expand(height: 30,width: 70),
                      child: TextButton(onPressed: (){}, child: const Text("Batafsil"))),
                )
              ],
            ),
          )
        ],
      ) ,
      
    );
  }
}
