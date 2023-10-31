import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/style.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({Key? key, required this.title, required this.value, required this.style}) : super(key: key);
 final String title,value;
 final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
           title,
            style:style
        ),
        Spacer(),
        Text(
            value,
            style:Style.style18
        )
      ],
    ) ;
  }
}
