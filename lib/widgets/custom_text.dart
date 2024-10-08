import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String data;
  final Color? color;
  const CustomText(
    this.data, {
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
