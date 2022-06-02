// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:bgb/models/call.dart';
import 'package:bgb/screens/components/comment_card.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.call}) : super(key: key);
  final Call call;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        elevation: 0,
        // title: Text(
        //   'Recomendação de Compra',
        //   style: TextStyle(color: kBackgroundColor, fontSize: 18),
        // ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          padding: EdgeInsets.only(left: kDefaultPadding),
        ),
        centerTitle: true,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(40),
              // height: 320,
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding / 2),
                      child: SizedBox(
                        height: 45,
                        child: Hero(
                          tag: widget.call.companyCode,
                          child: Image.asset(widget.call.companyIcon),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding / 2),
                      child: Column(
                        children: [
                          Text(
                            widget.call.companyCode,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text(
                            widget.call.companyName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 21),
                          ),
                          Container(
                            height: 2,
                            color: kSecondaryColor,
                            // padding: EdgeInsets.all(kDefaultPadding),
                            margin: EdgeInsets.all(kDefaultPadding),
                          ),
                          Text(
                            'Preço de Entrada: R\$ ${widget.call.buyEntry}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Preço de Venda: R\$ ${widget.call.objPrice}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Stop Loss: R\$ ${widget.call.stopLoss}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(kDefaultPadding),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: <Widget>[
                          //       // Padding(
                          //       //   padding: const EdgeInsets.all(8.0),
                          //       //   child: Text(
                          //       //     'Perca Máxima:',
                          //       //     style: TextStyle(
                          //       //         fontWeight: FontWeight.bold,
                          //       //         fontSize: 18),
                          //       //   ),
                          //       // ),
                          //       Container(
                          //         padding: EdgeInsets.all(kDefaultPadding / 4),
                          //         decoration: BoxDecoration(
                          //           color: Colors.red,
                          //           borderRadius:
                          //               BorderRadius.all(Radius.circular(5)),
                          //         ),
                          //         child: Text(
                          //           '${getLoss().toStringAsFixed(2)}%',
                          //           style: TextStyle(
                          //               fontSize: 18,
                          //               fontWeight: FontWeight.bold),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Objetivo:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(kDefaultPadding / 4),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Text(
                                  '${getGain().toStringAsFixed(2)}%',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  right: kDefaultPadding / 2, left: kDefaultPadding / 2),
              margin: EdgeInsets.only(
                  right: kDefaultPadding / 2, left: kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Comentários:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.call.comments.length,
                      itemBuilder: ((context, index) {
                        return CommentCard(
                          comment: widget.call.comments[index],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double getGain() =>
      (double.parse(widget.call.objPrice.split(',')[0]) /
              double.parse(widget.call.buyEntry.split(',')[0]) -
          1) *
      100.0;

  double getLoss() =>
      (double.parse(widget.call.stopLoss.split(',')[0]) /
              double.parse(widget.call.buyEntry.split(',')[0]) -
          1) *
      100.0;
}
