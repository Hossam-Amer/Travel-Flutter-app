import 'package:flutter/material.dart';
import 'package:travell/misc/colors.dart';
import 'package:travell/widgets/app_largetext.dart';
import 'package:travell/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "img/mountain.jpeg",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              child: SafeArea(
                child: Row(
                  children: [
                    IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        size: 35,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 275,
              child: Container(
                padding:const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                   const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: "Yosemite"),
                        AppLargeText(
                          text: "\$250",
                          size: 18,
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                   const SizedBox(
                      height: 15,
                    ),
                   const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        AppText(
                          text: "USA Caliornia",
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          return Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const AppLargeText(text: "People"),
                    const SizedBox(
                      height: 10,
                    ),
                    const AppText(text: "Number of people in your group"),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: List.generate(
                        5,
                        (index) {
                          return Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black12),
                            child: Center(
                              child: Text(
                                (index + 1).toString(),
                                style: const TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w700),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const AppLargeText(
                      text: "Description",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const AppText(
                      text:
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus minima nisi atque culpa ab laudantium iste deleniti perspiciatis, rerum quos facere sunt maiores minus dolore perferendis rem, accusamus aliquam soluta!",
                      color: Colors.black26,
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 2, color: Colors.black26),
                            ),
                            child: const Icon(
                              Icons.favorite,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(81, 91, 183, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                          ),
                          onPressed: () {},
                          icon: const Text(
                            "Book Trip Now",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          label: const Icon(Icons.arrow_forward),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
