// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('Página Principal'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications,
                color: kBackgroundColor,
              ))
        ],
      ),
      body: Stack(children: <Widget>[
        Container(
          color: kBackgroundColor,
        ),
        Container(
          color: kPrimaryColor,
          height: 60,
        ),
        ListView.builder(
          itemCount: iconsList.length,
          itemBuilder: (context, index) {
            return iconsList[index];
          },
          scrollDirection: Axis.horizontal,
        )
      ]),
    );
  }
}
