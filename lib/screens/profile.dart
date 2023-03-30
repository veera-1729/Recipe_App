import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:receipe_app/utils/colors.dart';
class Profile extends StatelessWidget {
   Profile({super.key});

  @override
  List<Icon> icons = [
    Icon(Icons.person,color: maincolor),
    Icon(Icons.settings,color: maincolor),
    Icon(Icons.note_add,color: maincolor),
    Icon(Icons.favorite,color: maincolor),
    Icon(Icons.chat,color: maincolor),
    Icon(Icons.login,color: maincolor),
  ];
  List titls = [
    'Personal data',
    'Settings',
    'E-Statement',
    'Referal Code',
    'FAQs',
    'Logout',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(color: maincolor,width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage:AssetImage('assets/images/profile_avatar.png'),
                    radius: 60,
                    
                  ),
                ),
              ],
            ),
            Text('Charlie Chaplin',
            style: TextStyle(
              fontSize:24,
              fontFamily: 'ro'
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 10),
              child: Divider(
                thickness: 2,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context,int index) {
                  return  Padding(
                    padding: const EdgeInsets.only(bottom:10.0,left: 10,right: 10),
                    child: Material(
                      elevation: 3,
                       borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1,
                          color: Colors.grey)
                          
                        ),
                        child: ListTile(
                          leading: Container(
                            height:37,
                            width: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:icons[index],
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(bottom:4),
                            child: Text(titls[index]),
                          ),
                                
                          trailing: Icon(Icons.arrow_forward_ios_sharp,size:20),
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
    );
  }
}