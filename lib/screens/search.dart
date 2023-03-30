import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receipe_app/screens/Home_screens.dart';
import 'package:receipe_app/screens/home.dart';
import 'package:receipe_app/utils/appbar.dart';
import 'package:receipe_app/utils/colors.dart';
import 'package:receipe_app/utils/navigation.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<int> list = [1, 1, 1, 1, 1];
  List<bool> extra = [false, false, false, false, false];
  // bool extra = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(()=>Navigation())  ;
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        )),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                for (int i = 0; i < 5; i++) ...{
                  card(i),
                }
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget card(int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      height: 190,
      width: 390,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 1), // changes position of shadow
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image 6.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //give grey background color
                    color: Colors.grey[100],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (list[index] >= 2) list[index]--;
                          });
                        },
                        child: Text(
                          "-",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                      ),
                      Text(
                        "${list[index]}",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            list[index]++;
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Margarita",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Large | Cheese, onion",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Rs.534",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          value: extra[index],
                          onChanged: (value) {
                            setState(() {
                              extra[index] = !extra[index];
                            });
                          }),
                      Text("Extra Topping")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
