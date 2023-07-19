// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travell/pages/detail_page.dart';
import 'package:travell/pages/home_page.dart';
import 'package:travell/pages/navpages/main_page.dart';
import 'package:travell/pages/welcome_page.dart';
 main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}
