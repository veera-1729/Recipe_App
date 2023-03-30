import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receipe_app/utils/appbar.dart';
import 'package:receipe_app/utils/colors.dart';

class Favourite extends StatelessWidget {
  Favourite({super.key});

  List catgs = ['dinner', 'lunch', 'fast', 'dinner'];
  List foods = ['Burger', 'Pizza', 'Pasta', 'Burger'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Image.asset(
          "assets/images/food logo.png",
          width: 100,
          height: 25,
        ),
        backgroundColor: background,
        centerTitle: true,
        
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/${catgs[index]}0.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          foods[index],
                          style: TextStyle(
                            color: font,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: maincolor,
                          size: 27,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
