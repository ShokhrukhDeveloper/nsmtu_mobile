import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Pages/Home/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    onInit();
    super.initState();
  }
  bool start=false;
  Future<void> onInit() async {
   await Future.delayed(const Duration(seconds: 1));
   start=true;
   setState(() {
   });

   await Future.delayed(const Duration(seconds: 1));
   start=false;
   setState(() {

   });
   await Future.delayed(const Duration(seconds: 1));
   start=true;
   setState(() {

   });
   await Future.delayed(const Duration(seconds: 3));
   next();
  }
  void next(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_){
      return const HomePage();
    }), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(

        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg.jpg"),
                        fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0,sigmaY: 3.0),
              child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 100),
                    child: AnimatedOpacity(
                        duration: const Duration(seconds: 3),
                        opacity: start?1:0,
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 3),
                          width: start?400:20,
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/logo.png"))),
                            // child: Image.asset("assets/logo.png",color: Colors.deepPurple,)
                          ),
                        )),
                  )),
              ),

            ),
            // Image.asset("assets/bg.jpg",
            //   fit: BoxFit.cover,    width: double.infinity,
            //   height: double.infinity,),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  width: 35,
                  height: 35,
                  child: const CircularProgressIndicator.adaptive(backgroundColor: Colors.deepPurple,)),
            )
          ],
        ),
      ),
    );
  }
}
