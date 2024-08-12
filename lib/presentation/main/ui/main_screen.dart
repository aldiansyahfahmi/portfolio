import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/presentation/about/ui/about_screen.dart';
import 'package:portfolio/presentation/home/ui/home_screen.dart';
import 'package:portfolio/presentation/main/bloc/navigation_cubit/navigation_cubit.dart';
import 'package:portfolio/presentation/portfolio/ui/portfolio_screen.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/shared_libraries/utils/helpers/url_helper.dart';
import 'package:portfolio/shared_libraries/utils/resources/assets.gen.dart';
import 'package:portfolio/shared_libraries/utils/style/colors.dart';
import 'package:portfolio/shared_libraries/utils/style/typography.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: BlocBuilder<NavigationCubit, int>(
        builder: (context, navigationIndex) {
          return Scaffold(
            backgroundColor: ColorName.dark,
            bottomNavigationBar: Responsive(
              mobile: Navigation(
                navigationIndex: navigationIndex,
              ),
              tablet: Navigation(
                navigationIndex: navigationIndex,
              ),
              desktop: const SizedBox.shrink(),
            ),
            body: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: isDesktop ? 200 : 24,
                    vertical: 24,
                  ),
                  color: ColorName.dark,
                  child: Row(
                    children: [
                      Text(
                        'aldev();',
                        style: MyTypography.heading3.bold.copyWith(
                          color: ColorName.blue,
                        ),
                      ),
                      if (isDesktop) const Spacer(),
                      if (isDesktop)
                        SizedBox(
                          width: 500,
                          child: Navigation(
                            navigationIndex: navigationIndex,
                            margin: 0,
                          ),
                        ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: IconButton(
                          onPressed: () {
                            UrlHelper.openLinkInNewTab(
                              'https://github.com/aldiansyahfahmi',
                            );
                          },
                          icon: Assets.images.icons.github.svg(width: 32),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: IndexedStack(
                    index: navigationIndex,
                    children: const [
                      HomeScreen(),
                      AboutScreen(),
                      PortfolioScreen(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Navigation extends StatelessWidget {
  final int navigationIndex;
  final double margin;
  const Navigation({
    super.key,
    required this.navigationIndex,
    this.margin = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorName.blue.withOpacity(0.30),
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: BottomNavigationBar(
        currentIndex: navigationIndex,
        backgroundColor: ColorName.dark,
        selectedItemColor: ColorName.blue,
        selectedLabelStyle: MyTypography.label2.bold,
        unselectedItemColor: ColorName.white,
        items: const [
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: 'Portfolio',
          ),
        ],
        onTap: (value) {
          context.read<NavigationCubit>().changeTab(value);
        },
      ),
    );
  }
}
