import 'package:flutter/material.dart';

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
        primarySwatch: Colors.purple,
      ),
      home: const Home(title: 'Navoiy Davlat Konchilik va Texnologiylari Universeteti'),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
