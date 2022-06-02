// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard(
      {Key? key,
      this.cardBackColor,
      required this.title,
      required this.icon,
      required this.whereTo,
      required this.backgroundImage})
      : super(key: key);

  final Widget whereTo;
  final Color? cardBackColor;
  final String title;
  final IconData icon;
  final ImageProvider backgroundImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => whereTo));
      },
      child: Container(
        // height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: cardBackColor,
          boxShadow: [kDefaultShadow],
        ),
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(kDefaultPadding / 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: backgroundImage,
              fit: BoxFit.fitHeight,
              opacity: 0.2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                size: 60,
                color: cardBackColor,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
