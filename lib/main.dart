import 'package:flutter/material.dart';
//import 'package:panduan_puasa/page_home/home_page.dart';
import 'package:panduan_puasa/page_login/login_page.dart';
// ignore: duplicate_import
import 'page_login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Panduan Puasa",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: false,
      ),
      //home:const HomePage(),
      home: LoginPage(),
    );
  }
}