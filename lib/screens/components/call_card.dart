// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:bgb/models/call.dart';
import 'package:flutter/material.dart';
import 'package:country_icons/country_icons.dart';

class CallCard extends StatelessWidget {
  const CallCard({Key? key, required this.call}) : super(key: key);
  final Call call;

  final double iconSize = 35, iconHeight = 50, iconWidth = 25;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 180,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kSecondaryColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 60),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Expanded(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      SizedBox(
                        height: 30,
                        child: Image.asset(call.companyIcon),
                      ),
                      Text(
                        call.companyCode,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      // Text(''),
                      Text(
                        'Preço de Compra:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'De R\$ ${call.buyEntry} a R\$ ${call.buyMax}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Preço de Venda: R\$ ${call.objPrice}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Stop Loss: R\$ ${call.stopLoss}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: kDefaultPadding,
            right: kDefaultPadding,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: SizedBox(
                    height: iconHeight + 10,
                    width: iconWidth + 10,
                    child: Image.asset('icons/flags/png/br.png',
                        package: 'country_icons'),
                  ),
                ),
                SizedBox(
                  height: iconHeight,
                  width: iconWidth,
                  child: Icon(
                    Icons.chat,
                    color: kBackgroundColor,
                    size: iconSize,
                  ),
                ),
                SizedBox(
                  height: iconHeight,
                  width: iconWidth,
                  child: Icon(
                    Icons.favorite_border,
                    color: kBackgroundColor,
                    size: iconSize,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
