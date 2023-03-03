import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Data/Styles/AppTextStyle.dart';
class AnnouncementItemWidget extends StatelessWidget {
   const AnnouncementItemWidget({Key? key, required this.onTap, required this.text}) : super(key: key);
   final VoidCallback? onTap;
   final String text;

// String text="Inklyuziv muhitni shakllantirish borasida hamda jismoniy imkoniyati cheklangan talabalar uchun qanday sharoitlar yaratilgan?";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15,bottom: 15),
      padding: const EdgeInsets.all(3),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            LimitedBox(
                maxHeight: 150,
                maxWidth: 350,
                child: Text(text,
                  style: AppTextStyle.styleAnnouncementContent,
                  overflow: TextOverflow.fade,)),
            const SizedBox(height: 5,),
            Row(
              children: [
                const Icon(Icons.date_range,size: 20,color: Colors.deepPurple,),
                const SizedBox(width: 5,),
                Text("2023-02-16 15:14:20",style: AppTextStyle.styleNewsDate,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
