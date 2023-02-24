import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Widgets/MenuBarWidget/MenuBarWidget.dart';

  class TopBar extends StatelessWidget  with PreferredSizeWidget{
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    print("");
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
             const SizedBox(width: 5,),
              const FlutterLogo(),
              const SizedBox(width: 5,),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) {
                          return Theme.of(context).primaryColor;
                        }),),


                      onPressed: (){}, child: Row(
                    children: const [
                      Icon(Icons.book),
                      Text("Moodle")
                    ],

                  )),
                  const SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){},
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
                        return Theme.of(context).primaryColor;
                      }),),
                      child: Row(
                        children: const [
                          Icon(Icons.fact_check_sharp),
                          Text("Hemins")
                        ],

                      )),
                  const SizedBox(width: 5,),
                  if(MediaQuery.of(context).size.width>470)search(context)
                ],
              )),


            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(MediaQuery.of(context).size.width<=470)search(context)
            ],
          ),
        ),
         MenuBarWidget()
      ],
    );
  }
Widget search(BuildContext context){
    return SizedBox(
      width: 210,
      height: 30,
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
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(150);

}