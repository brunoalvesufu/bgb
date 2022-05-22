// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:bgb/models/call.dart';
import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  const CallCard({Key? key, required this.call}) : super(key: key);
  final Call call;

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
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(''),
                      Text('Preço de Compra:'),
                      Text('De R\$ ${call.buyEntry} a R\$ ${call.buyMax}'),
                      Text('Preço de Venda: R\$ ${call.objPrice}'),
                      Text('Stop Loss: R\$ ${call.stopLoss}'),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Positioned(
          //   top: kDefaultPadding,
          //   left: kDefaultPadding,
          //   height: 30,
          //   child: Image.asset(call.companyIcon),
          // ),
        ],
      ),
    );
  }
}
