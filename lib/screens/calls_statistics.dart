// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:flutter/material.dart';

class CallsHistory extends StatelessWidget {
  const CallsHistory({Key? key}) : super(key: key);

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
          'HISTÓRICO'.toUpperCase(),
          style: TextStyle(color: kPrimaryColor),
        ),
        centerTitle: true,
        backgroundColor: kBackgroundColor,
      ),
      body: Container(
        color: kBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                  columnSpacing: 12,
                  horizontalMargin: 12,
                  columns: [
                    DataColumn(
                      label: Text(''),
                    ),
                    DataColumn(
                      label: Text('ATIVO'),
                    ),
                    DataColumn(
                      label: Text('RESULTADO'),
                    ),
                    DataColumn(
                      label: Text('TIPO'),
                    ),
                  ],
                  rows: List<DataRow>.generate(
                      100,
                      (index) => DataRow(cells: [
                            DataCell(Text('A' * (10 - index % 10))),
                            DataCell(Text('B' * (10 - (index + 5) % 10))),
                            DataCell(Text('C' * (15 - (index + 5) % 10))),
                            DataCell(Text('D' * (15 - (index + 10) % 10))),
                          ]))),
            ),
          ),
        ),
      ),
    );
  }
}
