// ignore_for_file: prefer_const_constructors

import 'package:bgb/constants.dart';
import 'package:bgb/screens/calls_brazil.dart';
import 'package:bgb/screens/calls_cripto.dart';
import 'package:bgb/screens/calls_usa.dart';
import 'package:bgb/screens/homepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_icons/country_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CallsScreenBr(
      returning: false,
    ),
    CallsScreenUs(
      returning: false,
    ),
    CallsScreenCp(
      returning: false,
    ),
  ];

  final double iconSize = 44;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: iconSize,
            ),
            label: 'Home',
            backgroundColor: kPrimaryColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'icons/flags/png/br.png',
              package: 'country_icons',
              height: iconSize,
              width: iconSize,
            ),
            label: 'Bolsa Brasileira',
            backgroundColor: kBrasilColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'icons/flags/png/us.png',
              package: 'country_icons',
              height: iconSize,
              width: iconSize,
            ),
            label: 'Bolsa Americana',
            backgroundColor: kUSAColor,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/bitcoin.png',
              height: iconSize,
              width: iconSize,
            ),
            label: 'Criptoativos',
            backgroundColor: kCriptoColor,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kBackgroundColor,
        onTap: _onItemTapped,
        iconSize: iconSize,
      ),
    );
  }
}
