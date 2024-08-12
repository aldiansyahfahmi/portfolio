import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/shared_libraries/utils/resources/assets.gen.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';
import 'package:portfolio/shared_libraries/utils/style/typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildContent({bool isDesktop = false}) {
    return isDesktop
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTextContent(isDesktop: isDesktop),
              const SizedBox(width: 50),
              Assets.images.photo.profilePic.image(),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.photo.profilePic.image(),
              const SizedBox(height: 50),
              _buildTextContent(),
            ],
          );
  }

  Widget _buildTextContent({bool isDesktop = false}) {
    return Column(
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Text(
          'Hello, I’m',
          style: MyTypography.heading4.regular.copyWith(
            color: ColorName.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Aldiansyah Fahmi',
          style: MyTypography.heading1.bold.copyWith(
            color: ColorName.blue,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Flutter Developer',
          style: MyTypography.heading4.regular.copyWith(
            color: ColorName.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.dark,
      body: Center(
        child: SingleChildScrollView(
          child: Responsive(
            mobile: _buildContent(),
            tablet: _buildContent(),
            desktop: _buildContent(isDesktop: true),
          ),
        ),
      ),
    );
  }
}
