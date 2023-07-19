import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:travell/widgets/app_largetext.dart';
import 'package:travell/widgets/app_text.dart';
import 'package:travell/misc/colors.dart';
import 'package:travell/widgets/responsivebuuton.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                // ignore: prefer_interpolation_to_compose_strings
                image: AssetImage("img/" + images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                top: 120,
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppLargeText(text: "Trips"),
                      const AppText(
                        text: "Mountain",
                        size: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with an endurance test",
                          color: AppColors.bigTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ResponsiveButton()
                    ],
                  ),const Spacer(),
                  Column( 
                      children: List.generate(3, (indexSlider) {
                    return Container(
                            margin:const EdgeInsets.only(bottom: 4),
                      
                      height: index == indexSlider ? 25 : 8,
                      width: 8,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                        color: index == indexSlider
                            ? AppColors.mainColor
                            : AppColors.mainColor.withOpacity(0.3),
                      
                      ),
                    );
                  }))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
