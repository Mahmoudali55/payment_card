import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/style.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({Key? key, required this.title, required this.value}) : super(key: key);
final String title,value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,textAlign: TextAlign.center,style: Style.style18,),
        Text(
          value,
          style: Style.styleBold18
        ),
      ],
    );
  }
}
