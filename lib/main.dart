import 'package:flutter/material.dart';

import 'Features/checkout/presotion/view/my_cart_view.dart';

void main() {
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
