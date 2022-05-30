// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bgb/constants.dart';
import 'package:bgb/models/call.dart';
import 'package:bgb/screens/components/call_card.dart';
import 'package:bgb/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class CallsScreenBr extends StatelessWidget {
  const CallsScreenBr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrasilColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Bolsa Brasileira'.toUpperCase(),
          style: TextStyle(color: kPrimaryColor),
        ),
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications,
                color: kBackgroundColor,
              ))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          // typeList(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
              ),
              Image.asset('assets/images/logo.png'),
              ListView.builder(
                itemCount: callsDemoBR.length,
                itemBuilder: ((context, index) {
                  return CallCard(
                    call: callsDemoBR[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              call: callsDemoBR[index],
                            ),
                          ));
                    },
                  );
                }),
              ),
            ],
          ))
        ],
      )),
    );
  }
}
