import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nsmtu_mobile/Data/Styles/AppTextStyle.dart';
import 'package:nsmtu_mobile/Presentation/GetX/Controllers/HomeController.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/NewsWidget/NewsItemWidget.dart';
class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key, required this.controller}) : super(key: key);
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12.withOpacity(0.05))
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          // header of news widget
          Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Flexible(
                 child: Text("Yangiliklar",style: TextStyle(
                  color: Theme.of(context).primaryColor,
                   fontSize: 18,
                   fontWeight: FontWeight.w500
              ),),
               ),
              ConstrainedBox(
                constraints: BoxConstraints.tight(const Size(150,25)),
                child: ElevatedButton(onPressed: (){},
                style:  ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Theme.of(context).primaryColor)
                ),
                  child: const Text("Hamma yangiliklar"),


                ),
              )
            ],
          ),
          Obx(
            () {
              return Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children:  [
                  if(controller.showNews.value)...
                  controller.news.map((e) => NewsItemWidget(content: e.titleUz??"", imgUrl: e.img??"", date: e.updateAt??"",)).toList()
                  ,
                  // NewsItemWidget(),
                  // NewsItemWidget(),
                  // NewsItemWidget(),
                ],
              );
            }
          )




        ],
      ),
    );
  }
}
