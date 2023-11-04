import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/Features/checkout/presotion/widget/payment_view/paymentmethods.dart';
import 'package:payment_app/core/utils/style.dart';

import 'button_view.dart';
import 'custom_button_bloc_consumer.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethods(),
          SizedBox(
            height: 32,
          ),
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}
