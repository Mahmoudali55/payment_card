import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/core/utils/style.dart';

import '../my_cart_widget/button_view.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({Key? key, required this.formKay, required this.autovalidateMode}) : super(key: key);
 final GlobalKey<FormState> formKay;
 final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
 String cardNumber='',expiryDate='',cardHolderName='', cvvCode='';

 bool showBackView=false;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardType: CardType.mastercard,
            cardBgColor:Colors.black ,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (value){}),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (carditCardModel){
              cardHolderName=carditCardModel.cardHolderName;
              expiryDate=carditCardModel.expiryDate;
             cardNumber=carditCardModel.cardNumber;
              cvvCode=carditCardModel.cvvCode;
              showBackView=carditCardModel.isCvvFocused;
              setState(() {

              });
            },
            formKey: widget.formKay),

      ],
    );
  }
}
