import 'package:flutter/material.dart';
import 'package:portfolio/shared_libraries/component/card/custom_card.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';
import 'package:portfolio/shared_libraries/utils/style/typography.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Experience',
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
                  'Smart Inovasi',
                  style: MyTypography.label1.bold.copyWith(
                    color: ColorName.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '2020 - Present',
                  style: MyTypography.label2.regular.copyWith(
                    color: ColorName.white,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Flutter Developer',
                  style: MyTypography.label2.semiBold.copyWith(
                    color: ColorName.white,
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• Mendesain UI/UX aplikasi menggunakan Figma',
                      style: MyTypography.label3.regular.copyWith(
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '• Membuat prototype aplikasi menggunakan Figma',
                      style: MyTypography.label3.regular.copyWith(
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '• Membuat aplikasi dari awal hingga aplikasi tersebut dapat digunakan menggunakan Flutter',
                      style: MyTypography.label3.regular.copyWith(
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '• Melakukan perbaikan bug pada aplikasi',
                      style: MyTypography.label3.regular.copyWith(
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '• Upload aplikasi ke Play Store dan App Store',
                      style: MyTypography.label3.regular.copyWith(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
