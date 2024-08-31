import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/shared_libraries/component/card/custom_card.dart';
import 'package:portfolio/shared_libraries/utils/helpers/url_helper.dart';
import 'package:portfolio/shared_libraries/utils/resources/assets.gen.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';
import 'package:portfolio/shared_libraries/utils/style/typography.dart';

List<Map<String, dynamic>> projects = [
  {
    'name': 'Med Anatomy Learning FKUH',
    'description':
        'Aplikasi ini dibuat untuk memudahkan dalam proses belajar mengajar, dalam aplikasi ini terdapat beberapa pembelajaran yang dapat dilakukan mahasiswa, seperti lembar kerja, kuis, video pembelajaran dan materi dalam bentuk pdf yang dapat dibaca mahasiswa. Latihan-latihan yang dilakukan oleh mahasiswa juga dapat dimonitoring oleh dosen pembimbing serta memberikan umpan balik terhadap hasil kerja mahasiswa, sehingga mahasiswa bisa mendapatkan masukan dari hasil kerja mereka.',
    'image': Assets.images.projects.medAnatomyLearningFKUH.image(),
    'link':
        'https://play.google.com/store/apps/details?id=androidmakassar.medanatomylearning&amp;hl=id',
  },
  {
    'name': 'E-Logbook Profesi FKUH',
    'description':
        'Aplikasi e-logbook profesi dokter adalah aplikasi khusus yang dirancang untuk membantu dokter KOAS dalam mencatat, menyimpan, dan mengakses catatan harian atau log dari berbagai aktivitas yang dilakukan selama bekerja. Aplikasi ini sangat berguna bagi para dokter yang ingin mencatat aktivitas harian mereka secara teratur dan terorganisir, sehingga mereka dapat mengetahui progress dan kemajuan yang telah dicapai dan juga mengetahui apa yang harus diperbaiki dalam pengobatan pasien.',
    'image': Assets.images.projects.eLogbookProfesiFKUH.image(),
    'link':
        'https://play.google.com/store/apps/details?id=com.smartinovasi.e_logbook_profesi&amp;hl=id',
  },
  {
    'name': 'E-Logbook Prodi S1 FKUH',
    'description':
        'Aplikasi ini digunakan untuk mencatat aktifitas akademik dan penelitian serta dapat memonitoring sejauh mana tingkat pencapaian akademik mahasiswa. Dalam aplikasi ini terdapat menu log komunikasi dan log penelitian. Log komunikasi berguna untuk membuat bimbingan, melihat rangkuman akademik dan matakuliah, sedangkan untuk menu log penelitian berguna untuk melakukan penelitian dimana terdapat beberapa step yang dilalui oleh mahasiswa hinggan akhirnya sampai ke ujian akhir.',
    'image': Assets.images.projects.eLogbookProdiS1FKUH.image(),
    'link':
        'https://play.google.com/store/apps/details?id=com.smartinovasi.e_logbook_prodi_s1&hl=id',
  },
  {
    'name': 'Presensita',
    'description':
        'Aplikasi ini adalah aplikasi yang dirancang untuk melakukan absensi. Beberapa fitur yang ada dalam aplikasi ini antara lain seperti pengajuan izin/cuti, pengajuan lembur, pengajuan pinjaman, mencatata aktivitas, slip gaji, pengumuman, dan melakukan absensi. Untuk melakukan absensi pada aplikasi ini harus mengaktifkan lokasi, sehinggan pengguna harus melakukan absensi berdasarkan titik lokasi yang telah ditentukan oleh admin, jadi pengguna tidak dapat melakukan absensi jika berada diluar radius titik koordinat.',
    'image': Assets.images.projects.presensita.image(),
    'link':
        'https://play.google.com/store/apps/details?id=com.smartinovasi.presensita',
  },
  {
    'name': 'E-Logbook Profesi UNIPA',
    'description':
        'Aplikasi e-logbook profesi dokter adalah aplikasi khusus yang dirancang untuk membantu dokter KOAS dalam mencatat, menyimpan, dan mengakses catatan harian atau log dari berbagai aktivitas yang dilakukan selama bekerja. Aplikasi ini sangat berguna bagi para dokter yang ingin mencatat aktivitas harian mereka secara teratur dan terorganisir, sehingga mereka dapat mengetahui progress dan kemajuan yang telah dicapai dan juga mengetahui apa yang harus diperbaiki dalam pengobatan pasien.',
    'image': Assets.images.projects.eLogbookProfesiUNIPA.image(),
    'link':
        'https://play.google.com/store/apps/details?id=com.smartinovasi.e_logbook_profesi_unipa&hl=id',
  },
  {
    'name': 'E-Book Anatomy Nursing',
    'description':
        'Aplikasi E-Book adalah aplikasi khusus yang dirancang untuk membaca buku secara online.',
    'image': Assets.images.projects.eBookAnatomyLearning.image(),
    'link':
        'https://play.google.com/store/apps/details?id=smartinovasi.nursingdigitallearning&amp;hl=id',
  },
  {
    'name': 'Wallpaper App',
    'description':
        'Aplikasi ini berguna untuk mengubah wallpaper pada hp, aplikasi ini bisa melakukan perubahan pada homescreen, lockscreen atau dapat mengubah langsung keduanya.',
    'image': Assets.images.projects.wallpaperApp.image(),
    'link': 'https://github.com/aldiansyahfahmi/wallpaper-app',
  },
  {
    'name': 'E-Logbook PPDS THT',
    'description': '''
Aplikasi e-logbook PPDS THT-BKL Fakultas Kedokteran Universitas Hasanuddin adalah platform digital yang dirancang untuk memfasilitasi pencatatan, pemantauan, dan evaluasi aktivitas pendidikan dokter spesialis THT-BKL. Aplikasi ini memungkinkan para peserta PPDS (Program Pendidikan Dokter Spesialis) untuk merekam kegiatan klinis, prosedur medis, seminar, serta kegiatan akademik lainnya dengan mudah dan terstruktur.

Dengan antarmuka yang ramah pengguna, aplikasi ini mendukung pelacakan perkembangan kompetensi peserta secara real-time, sehingga memudahkan supervisor dan pembimbing dalam memberikan umpan balik yang konstruktif. Selain itu, sistem ini dilengkapi dengan fitur laporan otomatis yang membantu dalam persiapan dan penilaian berkala, serta mendukung transparansi dan akurasi dalam proses pendidikan.''',
    'image': Assets.images.projects.eLogbookPPDSTHT.image(),
    'link': 'https://github.com/aldiansyahfahmi/wallpaper-app',
  },
];

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

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
        child: Column(
          children: [
            Center(
              child: Text(
                'Portfolio',
                style: MyTypography.heading3.bold.copyWith(
                  color: ColorName.white,
                ),
              ),
            ),
            const SizedBox(height: 24),
            AlignedGridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: isDesktop ? 2 : 1,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return CustomCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: projects[index]['image'],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Text(
                            projects[index]['name'],
                            style: MyTypography.label1.semiBold.copyWith(
                              color: ColorName.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              UrlHelper.openLinkInNewTab(
                                projects[index]['link'],
                              );
                            },
                            icon: const Icon(
                              Icons.link,
                              color: ColorName.blue,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        projects[index]['description'],
                        style: MyTypography.label2.regular.copyWith(
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
      ),
    );
  }
}
