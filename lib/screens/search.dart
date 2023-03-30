import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receipe_app/utils/appbar.dart';
import 'package:receipe_app/utils/colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 10),
          child: Container(
            padding: EdgeInsets.only(left:20),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1,1),
                  blurRadius: 15,
                )
              ]
            ),
            child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search your receipe',
                  icon: Icon(Icons.search,color: Colors.grey,),
                ),
            ),
          ),
        ),
      ),
    );
  }
}