import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  const AppLargeText({
    super.key,
    this.color=Colors.black,
    required this.text,
    this.size=30,
  
  });
  final double size;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color,fontSize: size,fontWeight: FontWeight.bold,));
  }
}
