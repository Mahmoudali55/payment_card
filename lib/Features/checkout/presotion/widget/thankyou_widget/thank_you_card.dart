import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/Features/checkout/presotion/widget/thankyou_widget/payment_Item_info.dart';
import 'package:payment_app/core/utils/style.dart';

import '../my_cart_widget/orderinfoitem.dart';
import 'card_info_widget.dart';

class Thankyoucard extends StatelessWidget {
  const Thankyoucard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
 width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66,left: 22,right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style:Style.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style:Style.style20
            ),
            SizedBox(height: 42,),
            PaymentItemInfo(title: 'Date',value:'01/24/2023' ),
            SizedBox(height: 20,),
            PaymentItemInfo(title: 'Time' ,value: '10:15 AM',),
            SizedBox(height: 20,),
            PaymentItemInfo(title: 'To',value: 'Sam Louis',),
            SizedBox(height: 20,),
            Divider(thickness:2 ,),
            SizedBox(height: 20,),
            OrderInfoItem(title:"Total" ,value: "\$50.97",style:Style.style25),
            SizedBox(height: 30,),
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/barcode.svg'),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child:Text(
                        'PAID',
                        textAlign: TextAlign.center,
                        style:Style.style24.copyWith(color: Color(0xFF34A853))
                    ), )
                )
              ],
            ),
            SizedBox(height: ((MediaQuery.sizeOf(context).height*.2+20)/2)-29,)
          ],
        ),
      ),
    );
  }
}


