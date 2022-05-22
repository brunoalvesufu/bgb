// ignore_for_file: prefer_const_constructors

import 'package:bgb/constants.dart';
import 'package:flutter/material.dart';

class typeList extends StatefulWidget {
  const typeList({Key? key}) : super(key: key);

  @override
  State<typeList> createState() => _typeListState();
}

class _typeListState extends State<typeList> {
  int selectedIndex = 0;
  List types = ['Todas', 'Brasileira', 'Americana', 'Criptoativos'];

  @override
  Widget build(BuildContext context) {
    Size tela = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: types.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: kDefaultPadding / 4,
                // right: index == types.length - 1 ? kDefaultPadding : 0,
              ),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Colors.white.withOpacity(0.5)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                types[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
