// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bgb/constants.dart';
import 'package:bgb/models/call.dart';
import 'package:bgb/screens/components/call_card.dart';
import 'package:bgb/screens/components/types.dart';
import 'package:bgb/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class CallsScreenUs extends StatelessWidget {
  const CallsScreenUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kUSAColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('Bolsa Americana'),
        centerTitle: false,
        backgroundColor: kUSAColor,
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
                  itemCount: callsDemoUS.length,
                  itemBuilder: ((context, index) {
                    return CallCard(
                      call: callsDemoUS[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => detailScreen(
                                call: callsDemoUS[index],
                              ),
                            ));
                      },
                    );
                  }))
            ],
          ))
        ],
      )),
    );
  }
}
