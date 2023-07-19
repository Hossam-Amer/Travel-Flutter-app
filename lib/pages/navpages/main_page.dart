import 'package:flutter/material.dart';
import 'package:travell/pages/navpages/my_page.dart';

import 'bar_item_page.dart';
import '../home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchBar(),
    MyPage(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label: "Bar",
            icon: Icon(Icons.bar_chart_rounded),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "My",
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body:  SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
          top: 15,
          right: 15,
          left: 15,
        ),
child: pages[currentIndex],),
      ),
    );
  }
}
