import 'package:flutter/material.dart';
import 'package:nsmtu_mobile/Presentation/Pages/Home/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navoiy Davlat Konchilik va Texnologiylari Universeteti',
      theme: ThemeData(
        primaryColor: Colors.indigo
      ),
      home: const HomePage()
    );
  }
}

