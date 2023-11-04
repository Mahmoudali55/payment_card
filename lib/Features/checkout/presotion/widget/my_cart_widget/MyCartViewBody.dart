import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Features/checkout/presotion/manager/payment_cubit.dart';
import 'package:payment_app/Features/checkout/presotion/view/payment_details.dart';
import 'package:payment_app/Features/checkout/presotion/widget/my_cart_widget/payment_bottom_sheet.dart';
import 'package:payment_app/Features/data/repos/checkout_repo_impl.dart';

import 'package:payment_app/core/utils/style.dart';

import 'button_view.dart';
import 'orderinfoitem.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset('assets/images/Group 6.png')),
          SizedBox(
            height: 25,
          ),
          OrderInfoItem(
            title: "Order Subtotal",
            value: "\$42.97",
            style: Style.style18,
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(title: "Discount", value: "\$0", style: Style.style18),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(title: "Shipping", value: "\$8", style: Style.style18),
          SizedBox(
            height: 17,
          ),
          Divider(
            thickness: 2,
            endIndent: 12,
            indent: 12,
          ),
          OrderInfoItem(title: "Total", value: "\$50.97", style: Style.style25),
          SizedBox(
            height: 16,
          ),
          ButtonView(
              text: 'Complete Payment',
              style: Style.style24,
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    context: context,
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => PaymentCubit(CheckoutRepoImpl()),
                        child: PaymentMethodsBottomSheet(),
                      );
                    });
              }),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
