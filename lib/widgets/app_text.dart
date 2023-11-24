import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextAlign? textAling;
  final Color? color;
  AppText(this.text, {this.textAling, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAling,
        style: TextStyle(
          color: color ?? Colors.white,
        ));
  }
}
