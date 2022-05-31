// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:bgb/screens/components/icon_card%20.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
            itemCount: iconsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) => IconCard(
              title: iconsList[index].title,
              icon: iconsList[index].icon,
              cardBackColor: iconsList[index].cardBackColor,
              whereTo: iconsList[index].whereTo,
            ),
          ),
        )
        // ListView.builder(
        //   itemCount: iconsList.length,
        //   itemBuilder: (context, index) {
        //     return iconsList[index];
        //   },
        //   scrollDirection: Axis.horizontal,
        // )
      ]),
    );
  }
}
