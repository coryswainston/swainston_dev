import 'package:flutter/material.dart';
import 'package:swainston_dev/home_page.dart';
import 'package:swainston_dev/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Swainston Software Development",
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Styles.red,
          secondary: Styles.blue,
          surface: Styles.yellow,
          background: Styles.yellow,
        )
      ),
      home: const HomePage(),
    );
  }
}
