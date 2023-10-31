import 'package:flutter/cupertino.dart';

class customDashedLine extends StatelessWidget {
  const customDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: List.generate(30, (index) => Expanded(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 2),
          child: Container(
            color: Color(0xffB8B8B8),
            height: 2,
          ),
        ))),);
  }
}
