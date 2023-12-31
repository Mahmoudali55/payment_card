import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView(
      {Key? key,
      required this.text,
      required this.style,
      this.onTap,
      this.isLoading = false})
      : super(key: key);
  final String text;
  final TextStyle style;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
          color: Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
            child: isLoading
                ? CircularProgressIndicator()
                : Text(
                    text,
                    style: style,
                  )),
      ),
    );
  }
}
