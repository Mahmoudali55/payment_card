import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';

import 'Features/checkout/presotion/view/my_cart_view.dart';

void main() {
  Stripe.publishableKey=ApiKeys.publishableKey;
  runApp(const CheckoutApp());
}



class CheckoutApp extends StatelessWidget {
  const CheckoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView() ,
    );
  }
}
//paymentIntentObject create payment intent (amount ,currency)
//init payment sheet (paymentIntClientSecret)
//PresentPaymentSheet

//paymentIntModel create payment intent(amount ,currency,customerId)
//key secret createEphemeralKey(stripeVersion , customerId)
//initPaymentSheet(merchantDisplayName,intentClientSecret,ephemeralKeySecret)
//presentPaymentSheet()