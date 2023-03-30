import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receipe_app/screens/res_list.dart';
import 'package:receipe_app/utils/colors.dart';

import '../utils/appbar.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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
          padding: const EdgeInsets.only(top: 8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 240,
            ),
            itemCount: 6,
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => res_list());
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/${index + 1}c.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
