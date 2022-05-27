import 'package:bgb/models/call_comment.dart';

class Call {
  final String companyCode, companyName, companyIcon;
  final int type;
  final String buyEntry, buyMax, objPrice, stopLoss;
  late bool isFavorite = false;
  late List<CallComment> comments = [];

  Call(
    this.companyCode,
    this.companyName,
    this.companyIcon,
    this.type,
    this.buyEntry,
    this.buyMax,
    this.objPrice,
    this.stopLoss,
    this.isFavorite,
    this.comments,
  );
}

List<Call> callsDemoBR = [
  Call('VALE3', 'Vale do Rio Doce', 'assets/images/vale.png', 1, '82,00',
      '85,00', '95,00', '78,00', false, []),
  Call('PETR4', 'Petrobras', 'assets/images/petro.png', 1, '35,00', '37,00',
      '45,00', '30,00', true, []),
  Call('MGLU3', 'Magazine Luiza', 'assets/images/magalu.jpg', 1, '4,00', '4,20',
      '5,50', '3,20', false, []),
];
List<Call> callsDemoUS = [
  Call('GOOG', 'Alphabet Inc.', 'assets/images/google.png', 2, '2200,00',
      '2300,00', '2500,00', '2000,00', false, []),
];
List<Call> callsDemoCP = [
  Call('BTC', 'Bitcoin', 'assets/images/bitcoin.png', 3, '4,00', '4,20', '5,50',
      '3,20', false, []),
];
//Demo of Calls List
