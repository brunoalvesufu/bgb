// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard(
      {Key? key,
      this.press,
      this.cardBackColor,
      required this.title,
      required this.icon})
      : super(key: key);

  final void Function()? press;
  final Color? cardBackColor;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 180,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            Container(
              height: 160,
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
                    borderRadius: BorderRadius.circular(20)),
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
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
