import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton1 extends StatelessWidget {
  final VoidCallback onPress;
  final String buttonTitle;
  BottomButton1({required this.onPress, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: Colors.pink,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kbottomContainerHeight,
      ),
    );
  }
}