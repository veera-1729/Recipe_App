import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receipe_app/screens/home.dart';
import 'package:receipe_app/screens/profile.dart';
import 'package:receipe_app/screens/res_list.dart';
import 'package:receipe_app/utils/colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> countries = [
    "Brazil",
    "Nepal",
    "India",
    "China",
    "USA",
    "Canada"
  ];
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color.fromRGBO(5, 5, 5, 1)),
                        ),
                        Text("Ap , Tirupati")
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => Profile());
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/profile_avatar.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 344,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 19),
                    child: TextField(
                      controller: controller,
                      style: Theme.of(context).textTheme.bodyLarge,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        icon: const Icon(Icons.search),
                        iconColor: maincolor,
                        contentPadding: EdgeInsets.symmetric(horizontal: 6),
                        hintText: "Search Restaurants.....",
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => res_list());
                        },
                        child: Container(
                          width: 89,
                          height: 54,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(247, 237, 227, 1)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Non-veg",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => res_list());
                        },
                        child: Container(
                          width: 89,
                          height: 54,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(242, 248, 234, 1)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "veg",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => res_list());
                        },
                        child: Container(
                          width: 89,
                          height: 54,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(255, 241, 241, 1)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Fast food",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Near You",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: maincolor),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 323,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: countries.map((country) {
                        return InkWell(
                          onTap: (() {
                            Get.to(() => Home());
                          }),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                clipBehavior: Clip.antiAlias,
                                height: 180,
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
                          ),
                        );
                      }).toList(),
                    )),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Popular Restaurants",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 385,
                      width: 350,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/res.png',
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      style: TextStyle(color: Colors.grey),
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
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
        ),
      )),
    );
  }
}
