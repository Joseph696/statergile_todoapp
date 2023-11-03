import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statergile_todoapp/extentions/space_exs.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<IconData> icons = [
    CupertinoIcons.home,
    CupertinoIcons.person_2_fill,
    CupertinoIcons.settings,
    CupertinoIcons.info_circle_fill,
  ];

  List<String> texts = ["Home", "Profile", "Settings", "Details"];
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 90),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
            Colors.white,
            Colors.purple,
            Colors.grey,
          ])),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                'https://i.pngimg.me/thumb/f/720/m2H7K9A0Z5m2G6b1.jpg'),
          ),
          8.h,
          Text(
            "Joseph Nicholas",
            style: TextStyle(
                color: Colors.white,
                wordSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
            width: double.infinity,
            height: 300,
            child: ListView.builder(
              itemCount: icons.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                
                    //log('${texts[index]} Item Tapped!');
                  },
                  child: Container(
                    margin: EdgeInsets.all(7),
                    child: ListTile(
                      leading: Icon(
                        icons[index],
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text(
                        texts[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
