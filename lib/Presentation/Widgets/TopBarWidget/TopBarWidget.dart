import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/MenuBarWidget/MenuBarWidget.dart';

  class TopBar extends StatelessWidget{
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
             const SizedBox(width: 5,),
              const FlutterLogo(),
              const SizedBox(width: 5,),
              Expanded(child: Wrap(
              alignment: WrapAlignment.spaceAround,
                children: [

                  Container(
                    padding: const EdgeInsets.all(5),
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                                  (states) {
                                    return Theme.of(context).primaryColor;
                                    }),),


                        onPressed: (){}, child: Row(
                      children: const [
                        Icon(Icons.book),
                        Text("Moodle")
                      ],

                    )),
                  ),

                  Container(
                    padding: const EdgeInsets.all(5),
                    width: 120,
                    child: ElevatedButton(onPressed: (){},
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
                          return Theme.of(context).primaryColor;
                        }),),
                        child: Row(
                          children: const [
                            Icon(Icons.fact_check_sharp),
                            Text("Hemins")
                          ],

                        )),
                  ),
                 
                  // if(MediaQuery.of(context).size.width>470)
                    search(context)
                ],
              )),
            ],
          ),
        ),
        Container(
           width: double.infinity,
             color: Theme.of(context).primaryColor,
             child: Center(child: MenuBarWidget())),
      ],
    );
  }
Widget search(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(5),
      width: 210,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 5,right: 0,top: 0,bottom: 0),
            suffixIcon: Container(
                color: Theme.of(context).primaryColor,
                child: const Icon(Icons.search,color: Colors.white)) ,
            border: const OutlineInputBorder(
              borderSide: BorderSide(strokeAlign: 0.2)
            )
        ),
      ),
    );
}



}