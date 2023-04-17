import 'package:flutter/material.dart';
import 'package:motohelp/pages/firstpage.dart';
import 'package:motohelp/pages/homepage.dart';
import 'package:motohelp/pages/registerpage.dart';
import 'package:motohelp/pages/registerpage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MotoHelp',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 59, 102, 137),
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
    );
  }
}

