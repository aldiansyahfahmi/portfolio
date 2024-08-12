import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  const CustomCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(isDesktop ? 48 : 16),
      decoration: BoxDecoration(
        color: ColorName.blue2,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }
}
