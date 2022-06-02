import 'package:bgb/models/call_comment.dart';

class Call {
  final String companyCode, companyName, companyIcon;
  final int type;
  final String strategy, buyEntry, buyMax, objPrice, stopLoss;
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
    this.strategy,
  );
}

List<Call> callsDemoBR = [
  Call(
      'VALE3',
      'Vale do Rio Doce',
      'assets/images/vale.png',
      1,
      '82,00',
      '85,00',
      '95,00',
      '78,00',
      false,
      [commentDemo1, commentDemo2, commentDemo3, commentDemo4],
      'Ichimoku'),
  Call(
      'PETR4',
      'Petrobras',
      'assets/images/petro.png',
      1,
      '35,00',
      '37,00',
      '45,00',
      '30,00',
      true,
      [commentDemo1, commentDemo2, commentDemo3, commentDemo5],
      'Ichimoku'),
  Call(
      'MGLU3',
      'Magazine Luiza',
      'assets/images/magalu.jpg',
      1,
      '4,00',
      '4,20',
      '5,50',
      '3,20',
      false,
      [commentDemo1, commentDemo2, commentDemo4, commentDemo5],
      'Ichimoku'),
];
List<Call> callsDemoUS = [
  Call(
      'GOOG',
      'Alphabet Inc.',
      'assets/images/google.png',
      2,
      '2200,00',
      '2300,00',
      '2500,00',
      '2000,00',
      false,
      [commentDemo1, commentDemo3, commentDemo4, commentDemo5],
      'Ichimoku'),
];
List<Call> callsDemoCP = [
  Call(
      'BTC',
      'Bitcoin',
      'assets/images/bitcoin.png',
      3,
      '4,00',
      '4,20',
      '5,50',
      '3,20',
      false,
      [commentDemo2, commentDemo3, commentDemo4, commentDemo5],
      'Ichimoku'),
];
//Demo of Calls List

CallComment commentDemo1 = CallComment(
    'Brenner', 'Comentando comentários comentados.', DateTime.now());
CallComment commentDemo2 = CallComment('Guilherme',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', DateTime.now());
CallComment commentDemo3 = CallComment(
    'Bruno',
    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    DateTime.now());
CallComment commentDemo4 = CallComment(
    'Augusto',
    ' Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    DateTime.now());
CallComment commentDemo5 = CallComment(
    'Kleuber',
    'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    DateTime.now());
