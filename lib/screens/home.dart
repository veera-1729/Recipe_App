import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receipe_app/main.dart';
import 'package:receipe_app/screens/recipe.dart';
import 'package:receipe_app/utils/appbar.dart';
import 'package:receipe_app/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexx = 0;
  List category = ['All', 'Lunch', 'Snacks', 'Dinner'];
  List categoryname = ['dinner', 'lunch', 'dinner', 'fast'];
  List food = [
    ['burger', 'omlet', 'grilled wings', 'Grilled ribs'],
    ['pizza', 'steak', 'pasta', 'burger'],
    ['burger', 'omlet', 'grilled wings', 'Grilled ribs'],
    ['pancake', 'egg', 'banana', 'egg'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      //appBar: appbar(),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                                              'assets/images/res.png',
                                              fit: BoxFit.cover,
                                              height: 200,
                                              width: 253,
                                              isAntiAlias: true,
                                            ),
              ),
              SizedBox(height: 10,),
              Text("About",
              style: TextStyle(
     fontSize: 20,
     fontFamily: 'ro',
     color: Colors.black,
     fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 10,),
              Text("Jalpaan Veg Restaurant in Tirupati is a pure vegetarian fine dining establishment that offers a variety of North Indian and Chinese dishes."),
              SizedBox(height: 9,),
              Container(
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular( 10),
                  border: Border.all(width: 2,
                  color: Colors.grey)
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: 7,),
                      Text("Rating"),
                      SizedBox(width: 15,),
                      Text("4.5"),
                      Icon(Icons.star,color: maincolor,)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  'Popular Category',
                  style: TextStyle(
                    fontSize: 20,
                    color: font,
                    fontFamily: 'ro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Container(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 17.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              indexx = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                category[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: indexx == index ? Colors.white : font,
                                  fontFamily: 'ro',
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: indexx == index ? maincolor : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: maincolor,
                                  offset: indexx == index
                                      ? Offset(1, 1)
                                      : Offset(0, 0),
                                  blurRadius: indexx == index ? 10 : 0,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
               
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 250,
                    
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Recipe(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 4),
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 185, 185, 185),
                                offset: Offset(1, 1),
                                blurRadius: 15,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Icon(Icons.favorite_border_outlined)
                                  ],
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${categoryname[indexx]}${index}.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(height: 25),
                              Text(
                                food[indexx][index],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: font,
                                  fontFamily: 'ro',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '30 min',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: font,
                                      fontFamily: 'ro',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: maincolor,
                                      ),
                                      Text(
                                        '4.2',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: font,
                                          fontFamily: 'ro',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
