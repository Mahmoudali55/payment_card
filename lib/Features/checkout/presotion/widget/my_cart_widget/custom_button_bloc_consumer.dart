import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Features/checkout/presotion/manager/payment_cubit.dart';
import 'package:payment_app/Features/checkout/presotion/view/thank_you_view.dart';
import 'package:payment_app/Features/data/model/payment_intent_input_model.dart';

import '../../../../../core/utils/style.dart';
import 'button_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if(state is PaymentSuccess){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
            return ThankYouView();
          }));
        }
        if(state is PaymentFailure){
          Navigator.of(context).pop();
          SnackBar snackBar=SnackBar(content: Text(state.errMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return ButtonView(
          onTap: ()
          {
            PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount: '100', current: 'USD',customerId: 'cus_OvweKO5A6V36ij');
            BlocProvider.of<PaymentCubit>(context).makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          isLoading: state is PaymentLoading ? true :false,
          text: 'Continue', style: Style.style20,);
      },
    );
  }
}