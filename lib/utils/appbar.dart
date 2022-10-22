import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:receipe_app/utils/colors.dart';

PreferredSizeWidget appbar() {
  return AppBar(
    elevation: 0,
    leading: Icon(
      Icons.menu,
      size: 27,
    ),
    actions: [
      CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('assets/images/profile_avatar.png'),
      ),
    ],
    backgroundColor: maincolor,
  );
}
