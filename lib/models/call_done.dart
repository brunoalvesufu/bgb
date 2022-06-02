class CallDone {
  final String companyCode, companyName, companyIcon;
  final int type;
  final String strategy, buyEntry, buyMax, objPrice, stopLoss, callResult;

  CallDone(
    this.companyCode,
    this.companyName,
    this.companyIcon,
    this.type,
    this.buyEntry,
    this.buyMax,
    this.objPrice,
    this.stopLoss,
    this.strategy,
    this.callResult,
  );
}

List<CallDone> callsDoneDemo = [
  CallDone('VALE3', 'Vale do Rio Doce', 'assets/images/vale.png', 1, '82,00',
      '85,00', '95,00', '78,00', 'Ichimoku', '16%'),
  CallDone('PETR4', 'Petrobras', 'assets/images/petro.png', 1, '35,00', '37,00',
      '45,00', '30,00', 'Ichimoku', '29%'),
  CallDone('MGLU3', 'Magazine Luiza', 'assets/images/magalu.jpg', 1, '4,00',
      '4,20', '5,50', '3,20', 'Ichimoku', '-25%'),
];
