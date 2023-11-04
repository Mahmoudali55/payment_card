import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/Features/checkout/presotion/view/thank_you_view.dart';
import 'package:payment_app/Features/checkout/presotion/widget/payment_view/paymentmethods.dart';

import '../../../../../core/utils/style.dart';
import '../my_cart_widget/button_view.dart';
import 'cart_item.dart';
import 'custom_credit_card.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: PaymentMethods(),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formKay: formKey,
              autovalidateMode: autovalidateMode,
            ),
          ),
          SliverFillRemaining(
            child: Align(
                child: ButtonView(
              text: 'pay',
              style: Style.style25,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  log('payment');
                } else {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ThankYouView();
                  }));
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            )),
          )
        ],
      ),
    );
  }
}
