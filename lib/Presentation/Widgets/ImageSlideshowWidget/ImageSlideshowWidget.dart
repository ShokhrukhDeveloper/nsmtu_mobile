import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Styles/AppTextStyle.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Controllers/HomeController.dart';

class ImageSlideShowWidget extends StatelessWidget {
  const ImageSlideShowWidget({Key? key, required this.controller}) : super(key: key);
final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=> ImageSlideshow(children:[
        if(controller.showImageSlide.value)...controller.imageSlides.map((e) => image(url: e.sliderImg??'', text: e.title??"", context: context)).toList()
      ]
      ),
    );
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
