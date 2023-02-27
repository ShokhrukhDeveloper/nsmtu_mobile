import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:nsmtu_mobile/Presentation/Styles/AppTextStyle.dart';

class ImageSlideShowWidget extends StatelessWidget {
  const ImageSlideShowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(children: [
      image(
          url: "https://picsum.photos/800/300",
          text: "Talabalar teatr sudiosi",
          context: context),
      image(
          url: "https://picsum.photos/800/300",
          text: "Talabalar teatr sudiosi",
          context: context),
      image(
          url: "https://picsum.photos/800/300",
          text: "Talabalar teatr sudiosi",
          context: context),
    ]);
  }

  Widget image(
      {required String url,
      required String text,
      required BuildContext context}) {
    return Stack(
      children: [
        Image.network(
          url,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 50),
            height: 40,
            width: double.infinity,
            color: Theme.of(context).primaryColor.withOpacity(0.4),
            child: Center(
              child: Text(
                text,
                style: AppTextStyle.styleImageSlideshowContent,
              ),
            ),
          ),
        )
      ],
    );
  }
}
