import 'package:faramove_test/components/constants/app_images.dart';
import 'package:faramove_test/components/widget/apptext.dart';
import 'package:faramove_test/components/widget/primarycard.dart';
import 'package:faramove_test/components/widget/secondaryhomecard.dart';
import 'package:faramove_test/screens/musicplayer_page.dart';
import 'package:faramove_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AppImages.profile,
            height: 22.r,
            width: 22.r,
          ),
        ),
        title: AppText(
          fontSize: 20.sp,
          text: 'Hi, Sarah',
          fontWeight: FontWeight.w600,
          color: AppColors.wellnessBlack,
        ),
        actions: <Widget>[
          Image.asset(
            AppImages.chatOutline,
            height: 22.r,
            width: 22.r,
          ),
          SizedBox(
            width: 16.w,
          ),
          Image.asset(
            AppImages.notification,
            height: 22.r,
            width: 22.r,
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 20.w),
              color: AppColors.primaryFaintBlue,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 40.r,
                    width: 40.r,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryLightBlue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        AppImages.caution,
                        height: 19.r,
                        width: 19.r,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    child: AppText(
                      fontSize: 12.sp,
                      text: 'Go to your profile to complete\n registration',
                      fontWeight: FontWeight.w500,
                      height: 17 / 12,
                      color: AppColors.wellnessBlack,
                    ),
                  ),
                  Image.asset(
                    AppImages.arrow,
                    height: 16.r,
                    width: 26.r,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: AppText(
                fontSize: 16.sp,
                text: 'Quick Actions',
                fontWeight: FontWeight.w700,
                height: 17 / 12,
                color: AppColors.wellnessBlack,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            PrimaryCard(
              text: 'Book a session',
              subtext: 'Get prompt assistance from medical professionals.',
              color: AppColors.yellow,
              image: AppImages.sethoscope,
              subtextColor: AppColors.lightYellow,
            ),
            SizedBox(
              height: 16.h,
            ),
            PrimaryCard(
              text: 'Diary',
              subtext: 'Listen to the highlight from your previous session',
              color: AppColors.pink,
              image: AppImages.openbook,
              subtextColor: AppColors.lightPink,
            ),
            SizedBox(
              height: 16.h,
            ),
            PrimaryCard(
              text: 'Virtual assistant',
              subtext:
                  'Get easy access to converse with the assistant on how you feel.',
              color: AppColors.purple,
              image: AppImages.headset,
              subtextColor: AppColors.lightPurple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MusicPlayerPage()),
                );
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(
              color: AppColors.backgroundColor,
              thickness: 4,
              height: 4.h,
            ),
            const SecondaryHomeContainer(
              text: 'Upcoming Session (0)',
            ),
            Divider(
              color: AppColors.backgroundColor,
              thickness: 4,
              height: 4.h,
            ),
            const SecondaryHomeContainer(
              text: 'Tips to stay healthy',
              subtext: 'Get simple health tips.',
            ),
          ],
        ),
      ),
    );
  }
}
