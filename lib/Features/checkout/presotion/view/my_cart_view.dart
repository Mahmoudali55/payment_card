import 'package:flutter/material.dart';

import '../widget/my_cart_widget/MyCartViewBody.dart';
import '../widget/my_cart_widget/buildAppBar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart"),
      body: MyCartViewBody(),
    );
  }
}
