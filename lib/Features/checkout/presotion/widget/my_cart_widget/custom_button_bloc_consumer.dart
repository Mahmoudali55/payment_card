import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Features/checkout/presotion/manager/payment_cubit.dart';
import 'package:payment_app/Features/checkout/presotion/view/thank_you_view.dart';
import 'package:payment_app/Features/data/model/item_list_model/item_list_model.dart';
import '../../../../../core/utils/style.dart';
import '../../../../data/model/amount_model/amount_model.dart';
import '../../../../data/model/amount_model/details.dart';
import '../../../../data/model/item_list_model/item.dart';
import '../paypal_method/exceutePaypalPayment.dart';
import 'button_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return ThankYouView();
          }));
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return ButtonView(
          onTap: () {
            //  PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(
            //     amount: '100',
            //      current: 'USD',
            //      customerId: 'cus_OvweKO5A6V36ij');
            //  BlocProvider.of<PaymentCubit>(context).makePayment(
            //      paymentIntentInputModel: paymentIntentInputModel);

            var transactionsData = getTransactionsData();
            exceutePaypalPayment(context, transactionsData);
          },
          isLoading: state is PaymentLoading ? true : false,
          text: 'Continue',
          style: Style.style20,
        );
      },
    );
  }

  ({AmountModel amount, ItemsListModel itemList}) getTransactionsData() {
    var amount = AmountModel(
        currency: 'USD',
        total: "100",
        details: Details(shipping: "0", shippingDiscount: 0, subtotal: '100'));
    List<OrderItemModel> orders = [
      OrderItemModel(
        currency: 'USD',
        name: 'Apple',
        price: "4",
        quantity: 10,
      ),
      OrderItemModel(
        currency: 'USD',
        name: 'Apple',
        price: "5",
        quantity: 12,
      ),
    ];
    var itemList = ItemsListModel(orders: orders);
    return (amount: amount, itemList: itemList);
  }
}
