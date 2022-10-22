 import 'package:flutter/material.dart';
import 'package:receipe_app/screens/home.dart';
import 'package:receipe_app/screens/recipe.dart';
import 'package:receipe_app/screens/splash.dart';
import 'package:receipe_app/utils/navigation.dart';

 void main() {
  runApp(MyApp());
 }
 class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:SplashPage(),
      //home:Home(),
      //home: Recipe(),
      //home: Navigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}