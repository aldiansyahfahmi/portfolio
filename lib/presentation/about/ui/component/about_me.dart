import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/shared_libraries/component/card/custom_card.dart';
import 'package:portfolio/shared_libraries/utils/resources/assets.gen.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';
import 'package:portfolio/shared_libraries/utils/style/typography.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  Widget _buildTitle() {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'About ',
                style: MyTypography.heading4.semiBold.copyWith(
                  color: ColorName.white,
                ),
              ),
              TextSpan(
                text: 'Me',
                style: MyTypography.heading4.semiBold.copyWith(
                  color: ColorName.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Container(
          width: 100,
          height: 2,
          color: ColorName.blue,
        ),
      ],
    );
  }

  Widget _buildContent(String text, bool isDesktop) {
    return isDesktop
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.images.photo.profilePic2.image(),
              const SizedBox(width: 48),
              Expanded(
                child: Text(
                  text,
                  style: MyTypography.label2.regular.copyWith(
                    color: ColorName.white,
                  ),
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Assets.images.photo.profilePic2.image()),
              const SizedBox(height: 16),
              Text(
                text,
                style: MyTypography.label2.regular.copyWith(
                  color: ColorName.white,
                ),
              ),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    const aboutMeText = '''
Saya Aldiansyah Fahmi, seorang Flutter Developer berpengalaman lebih dari 4 tahun yang berasal dari Maros, Sulawesi Selatan. Dengan latar belakang pendidikan di bidang Teknik Informatika, saya memiliki keahlian dan pengalaman mendalam dalam pengembangan aplikasi menggunakan Flutter.
                    
Selama lebih dari 4 tahun, saya telah terlibat dalam berbagai proyek pengembangan aplikasi, membangun solusi yang efisien dan inovatif. Saya senantiasa berkomitmen untuk terus belajar dan berkembang, serta selalu mencari cara untuk meningkatkan keterampilan dan pengetahuan saya.
                    
Selain itu, saya juga terlibat dalam desain UI/UX, memastikan bahwa setiap aplikasi tidak hanya berfungsi dengan baik tetapi juga memberikan pengalaman pengguna yang menyenangkan dan intuitif.
                    
Terima kasih telah mengunjungi situs saya. Jangan ragu untuk menghubungi saya untuk berbicara lebih lanjut tentang proyek atau peluang kolaborasi!''';

    final isDesktop = Responsive.isDesktop(context);

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 16),
          _buildContent(aboutMeText, isDesktop),
        ],
      ),
    );
  }
}
