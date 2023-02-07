import 'package:faramove_test/components/constants/app_images.dart';
import 'package:faramove_test/components/widget/apptext.dart';
import 'package:faramove_test/components/widget/secondaryhomecard.dart';
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
            height: 32.r,
            width: 32.r,
          ),
          SizedBox(
            width: 16.w,
          ),
          Image.asset(
            AppImages.notification,
            height: 32.r,
            width: 32.r,
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Column(
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
          PrimaryCard(
            text: 'Book a session',
            subtext: 'Get prompt assistance from medical professionals.',
            color: AppColors.yellow,
            image: AppImages.sethoscope,
          ),
          const Spacer(),
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
    );
  }
}

class PrimaryCard extends StatelessWidget {
  const PrimaryCard({
    super.key,
    required this.image,
    required this.text,
    required this.subtext,
    required this.color,
  });
  final String image;
  final String text;
  final String subtext;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(6.r), color: color),
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              AppText(
                fontSize: 14.sp,
                text: text,
                fontWeight: FontWeight.w600,
                height: 17 / 42,
                color: AppColors.white,
              ),
              SizedBox(
                height: 6.h,
              ),
              AppText(
                fontSize: 12.sp,
                text: subtext,
                fontWeight: FontWeight.w500,
                height: 16 / 12,
                color: AppColors.wellnessBlack,
              ),
            ],
          ),
          Image.asset(image)
        ],
      ),
    );
  }
}
