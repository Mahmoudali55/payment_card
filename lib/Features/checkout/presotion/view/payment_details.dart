import 'package:flutter/material.dart';

import '../widget/my_cart_widget/buildAppBar.dart';
import '../widget/payment_view/payment_details_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Payment Details"),
        body: PaymentDetailsBody(),
    );
  }
}
