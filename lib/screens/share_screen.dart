// ignore_for_file: prefer_const_constructors

import 'package:bgb/constants.dart';
import 'package:flutter/material.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: kPrimaryColor,
            ),
            padding: EdgeInsets.only(left: kDefaultPadding),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'INDICAR APLICATIVO'.toUpperCase(),
            style: TextStyle(color: kPrimaryColor),
          ),
          centerTitle: true,
          backgroundColor: kBackgroundColor,
        ),
        body: Container(
          color: kBackgroundColor,
        ));
  }
}
