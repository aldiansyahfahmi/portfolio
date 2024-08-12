import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/shared_libraries/component/card/custom_card.dart';
import 'package:portfolio/shared_libraries/utils/resources/assets.gen.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';
import 'package:portfolio/shared_libraries/utils/style/typography.dart';

final skills = {
  'Dart': Assets.images.icons.dartOriginal.svg(width: 24),
  'Flutter': Assets.images.icons.flutterOriginal.svg(width: 24),
  'Git': Assets.images.icons.gitOriginal.svg(width: 24),
  'Github': Assets.images.icons.github.svg(width: 24),
  'Figma': Assets.images.icons.figmaOriginal.svg(width: 24),
};

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Skills',
                style: MyTypography.heading4.semiBold.copyWith(
                  color: ColorName.white,
                ),
              ),
              const SizedBox(width: 16),
              Container(
                width: 100,
                height: 2,
                color: ColorName.blue,
              ),
            ],
          ),
          const SizedBox(height: 16),
          AlignedGridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: isDesktop ? 4 : 2,
            mainAxisSpacing: isDesktop ? 24 : 16,
            crossAxisSpacing: isDesktop ? 24 : 16,
            itemCount: skills.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: ColorName.blue,
                  ),
                ),
                child: Row(
                  children: [
                    skills.values.elementAt(index),
                    const SizedBox(width: 16),
                    Text(
                      skills.keys.elementAt(index),
                      style: MyTypography.label2.semiBold.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
