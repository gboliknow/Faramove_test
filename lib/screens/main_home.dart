import 'package:faramove_test/components/constants/app_images.dart';
import 'package:faramove_test/components/widget/bottomnav_icon.dart';
import 'package:faramove_test/screens/home_page.dart';
import 'package:faramove_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  late TabController tabController;
  void onItemCLicked(int index) {
    _selectedIndex = index;
    tabController.index = _selectedIndex;
    if (_selectedIndex == 1) {}
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: 5, vsync: this, initialIndex: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          Container(
            color: AppColors.primaryBlue,
          ),
          const HomePage(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90.h,
        decoration: BoxDecoration(
          //Border.all
          color: AppColors.white,
          // boxShadow: const <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.black,
          //     offset: Offset(
          //       5.0,
          //       5.0,
          //     ), //Offset
          //     blurRadius: 10.0,
          //     spreadRadius: 2.0,
          //   ), //BoxShadow
          //   BoxShadow(
          //     color: Colors.white,
          //     offset: Offset(0.0, 0.0),
          //     blurRadius: 0.0,
          //     spreadRadius: 0.0,
          //   ), //BoxShadow
          // ],
        ),
        child: Padding(
          padding:
              EdgeInsets.only(left: 19.w, right: 19.w, top: 13.h, bottom: 20.h),
          child: BottomNavigationBar(
            selectedLabelStyle: GoogleFonts.mulish(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              height: 15 / 10,
              color: AppColors.primaryBlue,
            ),
            unselectedLabelStyle: GoogleFonts.mulish(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 15 / 10,
              color: AppColors.wellnessBlack,
            ),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: AppColors.white,
            items: [
              BottomNavigationBarItem(
                backgroundColor: AppColors.white,
                icon: BottomNavIcon(
                  selectedIndex: _selectedIndex,
                  selectedImage: AppImages.homeColoured,
                  unSelectedImage: AppImages.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.white,
                icon: BottomNavIcon(
                  selectedIndex: _selectedIndex,
                  selectedImage: AppImages.actions,
                  unSelectedImage: AppImages.actions,
                ),
                label: 'Resources',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.white,
                icon: BottomNavIcon(
                  selectedIndex: _selectedIndex,
                  selectedImage: AppImages.calender,
                  unSelectedImage: AppImages.calender,
                ),
                label: 'Session',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.white,
                icon: BottomNavIcon(
                  selectedIndex: _selectedIndex,
                  selectedImage: AppImages.communityColoured,
                  unSelectedImage: AppImages.community,
                ),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.white,
                icon: BottomNavIcon(
                  selectedIndex: _selectedIndex,
                  selectedImage: AppImages.profile,
                  unSelectedImage: AppImages.profile,
                ),
                label: 'Account',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.primaryBlue,
            unselectedItemColor: AppColors.wellnessBlack,
            onTap: onItemCLicked,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
