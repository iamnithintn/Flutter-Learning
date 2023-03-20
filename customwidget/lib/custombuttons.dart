import 'package:flutter/material.dart';

class LearningCustomRoundedButtons extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const LearningCustomRoundedButtons({
    super.key,
    required this.btnName,
    this.icon,
    this.bgColor = Colors.green,
    this.callback,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            shadowColor: bgColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        onPressed: () {
          callback!();
        },
        child: icon != null
            ? Row(
                children: [icon!, Text(btnName, style: textStyle)],
              )
            : Text(
                btnName,
                style: textStyle,
              ));
  }
}
