import 'package:flutter/material.dart';

import 'cart_item.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
final List<String>paymentMethodsItems=const [
  'assets/images/SVGRepo_iconCarrier.svg',
  'assets/images/Group.svg',
  'assets/images/SVGRepo_iconCarrier2.svg',
];
int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodsItems.length,
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: (){
              activeIndex=index;
              setState(() {

              });
            },
            child: CartItem(
              image: paymentMethodsItems[index],
              isActive: activeIndex==index,
            ),
          ),
        );
      }),
    );
  }
}
