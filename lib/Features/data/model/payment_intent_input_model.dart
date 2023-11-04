class PaymentIntentInputModel {
  final String amount;
  final String current;
  final String customerId;

  PaymentIntentInputModel(
      {required this.customerId, required this.amount, required this.current});
  toJson() {
    return {
      'amount': '${amount}00',
      'currency': current,
      'customer': customerId,
    };
  }
}
