// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bgb/constants.dart';
import 'package:bgb/models/call_done.dart';
import 'package:flutter/material.dart';

class CallsHistory extends StatefulWidget {
  const CallsHistory({Key? key}) : super(key: key);

  @override
  State<CallsHistory> createState() => _CallsHistoryState();
}

class _CallsHistoryState extends State<CallsHistory> {
  int? sortColumnIndex;
  bool isAscending = false;

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
            child: DataTable(
                headingTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                sortColumnIndex: sortColumnIndex,
                sortAscending: isAscending,
                // columnSpacing: 12,
                // horizontalMargin: 12,
                columns: [
                  DataColumn(
                    label: Text(''),
                  ),
                  DataColumn(
                    label: Text('ATIVO'),
                    onSort: onSort,
                  ),
                  DataColumn(
                    label: Text('RESULTADO'),
                  ),
                ],
                rows: List<DataRow>.generate(
                    callsDoneDemo.length,
                    (index) => DataRow(
                          cells: [
                            DataCell(Image.asset(
                              callsDoneDemo[index].companyIcon,
                              height: 72,
                              width: 72,
                            )),
                            DataCell(Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(callsDoneDemo[index].companyCode),
                                  // Text(callsDoneDemo[index].companyName),
                                ],
                              ),
                            )),
                            DataCell(Center(
                              child: Container(
                                padding: EdgeInsets.all(kDefaultPadding / 4),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Text(
                                  callsDoneDemo[index].callResult,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                          ],
                        ))),
          ),
        ),
      ),
    );
  }

  void onSort(int columnIndex, bool ascending) {
    callsDoneDemo.sort(
      (call1, call2) {
        return ascending
            ? call1.companyCode.compareTo(call2.companyCode)
            : call2.companyCode.compareTo(call1.companyCode);
      },
    );
    setState(() {
      sortColumnIndex = columnIndex;
      isAscending = ascending;
    });
  }
}
