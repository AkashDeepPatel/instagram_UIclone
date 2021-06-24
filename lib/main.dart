import 'package:flutter/material.dart';
import 'package:instagram_clone/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
