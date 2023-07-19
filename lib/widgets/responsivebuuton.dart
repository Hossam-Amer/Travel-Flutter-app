import 'package:flutter/material.dart';
import 'package:travell/misc/colors.dart';
import 'package:travell/pages/navpages/main_page.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({super.key, this.isResponsive = false, this.width});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => MainPage())),
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          children: [Image.asset("img/button-one.png")],
        ),
      ),
    );
  }
}
