import 'dart:async';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:receipe_app/screens/login.dart';
import 'package:get/get.dart';
import 'package:receipe_app/utils/colors.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Timer(const Duration(seconds: 2), () {
      Get.to(()=>LoginPage());
    });
    
  }

  @override
  Widget build(BuildContext context) {
    // return EasySplashScreen(
    //   logo: Image.asset('assets/images/food logo.png',
    //   width: 300,
    //   height: 340,
    //   //color: Color.fromRGBO( 255, 152, 50, 0.5),
    //   fit: BoxFit.cover,),
    //   title: Text(
    //     'Flutter Development',
    //     style: TextStyle(
    //       color: Colors.blue,
    //       fontFamily: 'ro',
    //       fontSize: 19,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    //   backgroundColor: Color.fromRGBO( 255, 152, 50, 0.5),
    //   showLoader: true,
    //   loaderColor: Colors.white,
    //   navigator: LoginPage(),
    //   durationInSeconds: 5,
    // );
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white
          ),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/food logo.png"),
            CircularProgressIndicator(
              color: maincolor,
            )
          ],
        ),
      ),
    );
  }
}
