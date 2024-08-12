import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about/ui/component/about_me.dart';
import 'package:portfolio/presentation/about/ui/component/education.dart';
import 'package:portfolio/presentation/about/ui/component/experience.dart';
import 'package:portfolio/presentation/about/ui/component/skills.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      backgroundColor: ColorName.dark,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: isDesktop ? 200 : 24,
          vertical: 24,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutMe(),
            SizedBox(height: 24),
            Skills(),
            SizedBox(height: 24),
            Experience(),
            SizedBox(height: 24),
            Education(),
          ],
        ),
      ),
    );
  }
}
