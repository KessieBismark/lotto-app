class TransactionModel {
  final String id;
  final String transactionType;
  final String date;
  final String tradeNo;
  final String amount;
  final String tNumber;
  final String balance;
  final String status;

  TransactionModel(
      {required this.id,
      required this.balance,
      required this.amount,
      required this.transactionType,
      required this.date,
      required this.tradeNo,
      required this.status,
      required this.tNumber});
}

class PaymentPlatform {
  final String id;
  final String name;
  final String imageUrl;

  PaymentPlatform(
      {required this.name, required this.id, required this.imageUrl});

 
}
