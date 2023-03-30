import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receipe_app/screens/home.dart';
import 'package:receipe_app/screens/search.dart';
import 'package:receipe_app/utils/colors.dart';

class Recipe extends StatefulWidget {
  Recipe({super.key});

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  List icon = ['dough-rolling', 'cheese', 'meat', 'sausage'];

  List value = ['250g', '120g', '100g', '50g'];

  int quantity = 1;

  int price = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,

              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/lunch1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Container(
                        width: 80,
                        height: 4,
                        color: font,
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
                    child: Icon(Icons.favorite_border_outlined,
                        size: 25, color: font),
                  ),
                ),
              ],
              // title: Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
              //   child: CircleAvatar(
              //     radius: 18,
              //     backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
              //     child: GestureDetector(
              //       child: Icon(Icons.arrow_back_ios, size: 30, color: font),
              //       onTap: () {
              //          Navigator.pop(context);
              //       },
              //     ),
              //   ),
              // ),
            ),
            SliverToBoxAdapter(
              child: _getbody(),
            )
          ],
        ),
      ),
    );
  }

  Widget _getbody() {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container(
                    //   width: 33,
                    //   height: 33,
                    //   child: Image.asset('assets/images/flash.png'),
                    // ),
                    // Container(
                    //   width: 33,
                    //   height: 33,
                    //   child: Image.asset('assets/images/meat.png'),
                    // ),
                    // Container(
                    //   width: 33,
                    //   height: 33,
                    //   child: Image.asset('assets/images/calories.png'),
                    // ),
                    // Container(
                    //   width: 33,
                    //   height: 33,
                    //   child: Image.asset('assets/images/star.png'),
                    // ),
                    Text(
                      "Grilled wings",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: maincolor,
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "(42 Reviews)",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      color: maincolor,
                    ),
                    Text(
                      '${price * quantity}',
                      style: TextStyle(
                        fontSize: 27,
                        color: maincolor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      width: 118,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Color.fromRGBO(255, 241, 229, 1)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantity -= 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: maincolor,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text("$quantity"),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantity += 1;
                                });
                              },
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: maincolor,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: font,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      4,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/${icon[index]}.png'),
                              Text(
                                value[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: font,
                                  fontFamily: 'ro',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Details",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 93,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: maincolor)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Size",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: maincolor),
                              ),
                              Text(
                                "Medium",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.black),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      width: 93,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: maincolor)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Energy",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: maincolor),
                              ),
                              Text(
                                "554 kcal",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.black),
                              )
                            ]),
                      ),
                    ),
                    Container(
                      width: 93,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: maincolor)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: maincolor),
                              ),
                              Text(
                                "45 min",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.black),
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20,
                        color: font,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: Text(
                  sampletext,
                  style: TextStyle(
                    fontSize: 18,
                    color: font,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 327,
                height: 61,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: maincolor,
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => Search());
                    },
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
