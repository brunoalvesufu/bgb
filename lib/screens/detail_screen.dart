// ignore_for_file: prefer_const_constructors

import 'package:bgb/constants.dart';
import 'package:bgb/models/call.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({Key? key, required this.call}) : super(key: key);
  final Call call;

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    var call;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          padding: EdgeInsets.only(left: kDefaultPadding),
        ),
        centerTitle: false,
        // title: Text(
        //   'RETONAR',
        //   style: Theme.of(context).textTheme.bodyText2,
        // ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Hero(
        tag: 'companyLogo',
        child: Image.asset(widget.call.companyIcon),
      ),
    );
  }
}
