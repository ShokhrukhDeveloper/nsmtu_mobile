import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/RecommenedLinksWidget/RecommendedLinksItemWidget.dart';
class RecommendedLinksWidget extends StatelessWidget {
  const RecommendedLinksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12.withOpacity(0.05))
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text("Tavsiya etiladiga linklar",style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),),
              ),
            ],
          ),
        const SizedBox(height: 5,width: 5,),
          Wrap(
            children: const [
              RecommendedLinksItemWidget(imgUrl: "https://picsum.photos/300/300",text: "Interaktiv xizmat ko'rsatish",),
              RecommendedLinksItemWidget(imgUrl: "https://picsum.photos/300/300",text: "Interaktiv xizmat ko'rsatish",),
              RecommendedLinksItemWidget(imgUrl: "https://picsum.photos/300/300",text: "Interaktiv xizmat ko'rsatish",),
              RecommendedLinksItemWidget(imgUrl: "https://picsum.photos/300/300",text: "Interaktiv xizmat ko'rsatish",),
              RecommendedLinksItemWidget(imgUrl: "https://picsum.photos/300/300",text: "Interaktiv xizmat ko'rsatish",),
              RecommendedLinksItemWidget(imgUrl: "https://picsum.photos/300/300",text: "Interaktiv xizmat ko'rsatish",),
              RecommendedLinksItemWidget(imgUrl: "https://picsum.photos/300/300",text: "Interaktiv xizmat ko'rsatish",),


            ],
          )
        ],
      ),
    );
  }
}
