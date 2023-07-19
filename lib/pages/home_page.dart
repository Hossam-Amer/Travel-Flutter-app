import 'package:flutter/material.dart';
import 'package:travell/misc/colors.dart';
import 'package:travell/widgets/app_largetext.dart';
import 'package:travell/widgets/app_text.dart';
import 'package:travell/widgets/coutomizeddrawericon.dart';

import '../widgets/CustomTabBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  //  int selectedIndex = 0;
  List<String> exploreMore_Incons = [
    "balloning",
    "hiking",
    "kayaking",
    "snorkling",
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomizedDrawerIcon(
                onTap: () {
                  // print('objaaaaaaaaact');
                },
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(196, 196, 196, 1),
                    borderRadius: BorderRadius.circular(4)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const AppLargeText(
            text: "Discover",
          ),
          const SizedBox(height: 40),

          //   CustomTabBar(
          //     children: const [
          //       "Places",
          //       "Inspiration",
          //       "Emothions",
          //     ],
          //     selectedIndex: selectedIndex,
          //     onTap: (int idx) {
          //       setState(() {
          //         selectedIndex = idx;
          //       });
          //     },
          //   ),
          //   Container(height: 300,
          //   width: double.maxFinite,
          //     child: ListView.builder(
          //       itemCount: 1,
          //       itemBuilder: (_, index) {
          //         return Container(
          //          width: 100,
          //           height: 100,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(30),
          //             // borderRadius: BorderRadius.circular(10),
          //             image: const DecorationImage(
          //               image: AssetImage("img/mountain.jpeg"),
          //               // fit: BoxFit.fitHeight,
          //             ),
          //           ),
          //           // child: Container(
          //           //   margin: const EdgeInsets.only(
          //           //     top: 120,
          //           //     left: 20,
          //           //     right: 20,
          //           //   ),
          //           // height: 30,),
          //         );
          //       },
          //     ),
          //   ),
          Container(
            // height: 300,
            // width: double.maxFinite,
            child: Align(
              // alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                // isScrollable: true,
                labelPadding: const EdgeInsets.only(left: 0, right: 0),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Tab(
                    // text: "Places",
                    child: Column(
                      children: [
                        Text("asd"),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 3,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    text: "Inspirations",
                  ),
                  Tab(
                    text: "Emotions",
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 300,
                      width: 200,
                      margin: EdgeInsets.only(right: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("img/mountain.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                Text("asd33333333"),
                Text("asd33333333"),
                // Container(
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage("img/welcome-three.png"),
                //     ),
                //   ),
                // ),
                //  Container(
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage("img/welcome-three.png"),
                //     ),
                //   ),
                // ),
                // Text("asd33333333")
              ],
            ),
          ),

          const SizedBox(
            height: 50,
          ),
          const Row(
            children: [
              AppLargeText(
                text: "Explore more",
                size: 22,
              ),
              Spacer(),
              AppText(
                text: "See all",
                color: AppColors.mainColor,
              )
            ],
          ),
         Expanded(
            // height:double.maxFinite,
            // width: double.maxFinite,
            child: ListView.builder(scrollDirection: Axis.horizontal,
              itemCount: exploreMore_Incons.length,
              itemBuilder: (_, int index) {
                return Column(
                    children: [
                      Container(
                 height: 80,
                width: 80,
                margin: EdgeInsets.only(bottom:10,right: 30,top:40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "img/${exploreMore_Incons[index]}.png"),
                    // fit: BoxFit.cover,
                  ),
                ),
                      ),
                      Container(margin: EdgeInsets.only(right: 30),
                        child: AppText(
                                      text: exploreMore_Incons[index],
                        ),
                      ),
                    ],
                  );
              },
            ),
          )
        ],
      ),
    );
  }
}
