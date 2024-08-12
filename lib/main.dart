import 'package:flutter/material.dart';
import 'package:portfolio/presentation/main/ui/main_screen.dart';
import 'package:portfolio/shared_libraries/utils/resources/fonts.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: FontFamily.poppins,
      ),
      home: const MainScreen(),
    );
  }
}
