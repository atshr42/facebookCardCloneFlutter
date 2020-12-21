import 'package:facebbok/screen/detailsScreen.dart';
import 'package:flutter/material.dart';
import 'screen/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/details": (context) => Details(),
      },
      debugShowCheckedModeBanner: false,
      title: "News Feed",
      home: HomeScreen(),
    );
  }
}
