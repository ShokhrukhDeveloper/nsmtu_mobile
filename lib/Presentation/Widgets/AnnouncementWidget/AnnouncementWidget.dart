import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/AnnouncementWidget/AnnouncementItemWidget.dart';
 String text="Inklyuziv muhitni shakllantirish borasida hamda jismoniy imkoniyati cheklangan talabalar uchun qanday sharoitlar yaratilgan?Inklyuziv muhitni shakllantirish borasida hamda jismoniy imkoniyati cheklangan talabalar uchun qanday sharoitlar yaratilgan?Inklyuziv muhitni shakllantirish borasida hamda jismoniy imkoniyati cheklangan talabalar uchun qanday sharoitlar yaratilgan?";

class AnnouncementWidget extends StatelessWidget {
  const AnnouncementWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12.withOpacity(0.05))
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text("Elonlar",style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tight(const Size(130,25)),
                child: ElevatedButton(onPressed: (){},
                  style:  ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Theme.of(context).primaryColor)
                  ),
                  child: const Text("Barchasi"),


                ),
              ),

            ],
          ),
          Wrap(
            children: [
              AnnouncementItemWidget(onTap: () {  }, text: text,),
              AnnouncementItemWidget(onTap: () {  }, text: text,),
              AnnouncementItemWidget(onTap: () {  }, text: text,),
              AnnouncementItemWidget(onTap: () {  }, text: text,),

            ],
          )
        ],
      ),
    );
  }
}
