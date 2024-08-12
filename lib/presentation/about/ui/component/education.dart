import 'package:flutter/material.dart';
import 'package:portfolio/shared_libraries/component/card/custom_card.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';
import 'package:portfolio/shared_libraries/utils/style/typography.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Education',
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
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: ColorName.blue,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Universitas Teknologi Akba Makassar (UNITAMA)',
                  style: MyTypography.label1.bold.copyWith(
                    color: ColorName.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '2018 - 2021',
                  style: MyTypography.label2.regular.copyWith(
                    color: ColorName.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Teknik Informatika',
                  style: MyTypography.label2.semiBold.copyWith(
                    color: ColorName.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
