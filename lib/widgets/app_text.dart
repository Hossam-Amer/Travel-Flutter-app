import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    this.color=Colors.black54,
    required this.text,
    this.size=16,
  
  });
  final double size;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color,fontSize: size,));
  }
}
