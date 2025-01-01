import 'package:flutter/material.dart';
import 'package:senior_housing_central/core/common/colors/app_colors.dart';
import 'package:senior_housing_central/features/explore_page/presentation/pages/explore_screen.dart';
import 'package:senior_housing_central/features/home_page/presentation/pages/home_screen.dart';
import 'package:senior_housing_central/features/inbox/presentation/pages/inbox_screem.dart';
import 'package:senior_housing_central/features/profile_page/presentation/pages/profile_screen.dart';
import 'package:senior_housing_central/features/resources/presentation/pages/resources_screen.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const ProfileScreen(),
    const ResourcesScreen(),
    const InboxScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(
      //   showLeading: false,
      // ),
      body: _pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: AppColors.background,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
          selectedItemColor: AppColors.navbarSelectIconColor,
          unselectedItemColor: AppColors.navbarUnselectedIconColor,
          items: [
            BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.navbarSelectIconColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/home.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/home.png',
                      width: 30,
                      height: 30,
                      color: AppColors.navbarUnselectedIconColor,
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.navbarSelectIconColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/search.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/search.png',
                      width: 30,
                      height: 30,
                      color: AppColors.navbarUnselectedIconColor,
                    ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.navbarSelectIconColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/profile.png',
                      width: 30,
                      height: 30,
                      color: AppColors.navbarUnselectedIconColor,
                    ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.navbarSelectIconColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/resources.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/resources.png',
                      width: 30,
                      height: 30,
                      color: AppColors.navbarUnselectedIconColor,
                    ),
              label: 'Resources',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 4
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.navbarSelectIconColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/chat.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/chat.png',
                      width: 30,
                      height: 30,
                      color: AppColors.navbarUnselectedIconColor,
                    ),
              label: 'Inbox',
            ),
          ],
        ),
      ),
    );
  }
}
