import 'package:faramove_test/components/constants/app_images.dart';
import 'package:faramove_test/components/widget/apptext.dart';
import 'package:faramove_test/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
  }
}
