import 'package:flutter/material.dart';

import '../widget/my_cart_widget/buildAppBar.dart';
import '../widget/thankyou_widget/thankyouviewBody.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar() ,
      body: ThankYouViewBody(),
    ) ;
  }
}
