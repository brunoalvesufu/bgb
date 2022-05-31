// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bgb/constants.dart';
import 'package:bgb/models/call.dart';
import 'package:bgb/screens/components/call_card.dart';
import 'package:bgb/screens/components/types.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';

class CallsScreenCp extends StatelessWidget {
  const CallsScreenCp({Key? key, required this.returning}) : super(key: key);

  final bool returning;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        leading: returning
            ? IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: kPrimaryColor,
                ),
                padding: EdgeInsets.only(left: kDefaultPadding),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            : null,
        title: Text(
          'Criptoativos'.toUpperCase(),
          style: TextStyle(color: kPrimaryColor),
        ),
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications,
                color: kPrimaryColor,
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
                  itemCount: callsDemoCP.length,
                  itemBuilder: ((context, index) {
                    return CallCard(
                      call: callsDemoCP[index],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                call: callsDemoCP[index],
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
