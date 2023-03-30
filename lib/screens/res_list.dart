import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receipe_app/screens/home.dart';
import 'package:receipe_app/utils/colors.dart';

class res_list extends StatefulWidget {
  const res_list({Key? key}) : super(key: key);

  @override
  State<res_list> createState() => _res_listState();
}

class _res_listState extends State<res_list> {
  List<String> countries = [
    "Brazil",
    "Nepal",
    "India",
    "China",
    "USA",
    "Canada"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Image.asset(
          "assets/images/food logo.png",
          width: 100,
          height: 25,
        ),
        backgroundColor: background,
        centerTitle: true,
        
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      height: 280,
                                      width: 253,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(
                                              width: 1, color: Colors.grey)),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/res.png',
                                            fit: BoxFit.cover,
                                            height: 200,
                                            width: 253,
                                            isAntiAlias: true,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Zalpan",
                                                  style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '4.2',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: maincolor,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.place),
                                              Text(
                                                "5.8km away",
                                                style: TextStyle(color: Colors.grey),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
          );
        }),
      )),
    );
  }
}
