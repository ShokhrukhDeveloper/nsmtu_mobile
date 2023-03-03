import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Data/Styles/AppTextStyle.dart';
class RecommendedLinksItemWidget extends StatelessWidget {
  const RecommendedLinksItemWidget({Key? key, required this.text, required this.imgUrl, this.onTap}) : super(key: key);
// final String text="Interaktiv xizmat ko'rsatish";
final String text;
final String imgUrl;
final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(top: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black12)

      ),
      width: 160,
      height: 160,
      child: InkWell(
        onTap: onTap,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LimitedBox(
              maxWidth: 150,
              maxHeight: 100,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(imgUrl,width: double.infinity,height: double.infinity,fit: BoxFit.contain,)),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: AppTextStyle.styleRecommendedLinkText,
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
 

    );
  }
}
