import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/DepartureWidget/DepartureItemWidget.dart';

class DepartureWidget extends StatelessWidget {
  const DepartureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12)
      ),
      child: Column(
        children:  [

          Container(
            padding: EdgeInsets.symmetric(vertical: 3),
            decoration: const BoxDecoration(
                border: Border(bottom:BorderSide(color: Colors.blueAccent))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text("Kafedralar",style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),),
                ),
              ],
            ),
          ),

          const DepartureItemWidget(text: 'Oliy matematika va axborot texnologiyalar kafedrasi',),
          const DepartureItemWidget(text: 'Avtomatlashtirish va boshqaruv kafedrasi',),
          const DepartureItemWidget(text: 'Konchilik elektr mexanikasi kafedrasi',),
          const DepartureItemWidget(text: 'Konchilik ishi kafedrasi',),
          const DepartureItemWidget(text: 'Hayot faoliyati xavfsizligi kafedrasi',),
          const DepartureItemWidget(text: 'O\'zbek va chet tillari kafedrasi',),
        ],
      ),
    );
  }
}
