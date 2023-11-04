class InitPaymentSheetInputModel {
  final String clientSecret;
  final String customerId;
  final String ehemeralKeySecret;

  InitPaymentSheetInputModel(
      {required this.clientSecret,
      required this.customerId,
      required this.ehemeralKeySecret});
}
