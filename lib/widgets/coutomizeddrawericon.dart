import 'package:flutter/material.dart';

class CustomizedDrawerIcon extends StatelessWidget {
  const CustomizedDrawerIcon({super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
          ),  
          const SizedBox(
            height: 3,
          ),
          Container(
            width: 10,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
