import 'package:faramove_test/components/components.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              AppImages.dropdown,
              height: 22.r,
              width: 22.r,
            ),
          ),
        ),
        title: AppText(
          fontSize: 18.sp,
          text: 'Stay Motivated Ep. 1',
          fontWeight: FontWeight.w600,
          color: AppColors.wellnessBlack,
        ),
        actions: <Widget>[
          Image.asset(
            AppImages.share,
            height: 32.r,
            width: 32.r,
          ),
          SizedBox(
            width: 16.w,
          ),
          Image.asset(
            AppImages.bookmark,
            height: 32.r,
            width: 32.r,
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  AppImages.st,
                  height: 334.r,
                  width: 321.r,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AppText(
                            fontSize: 16.sp,
                            height: 19 / 16,
                            text: '10 reasons ',
                            fontWeight: FontWeight.w700,
                            color: AppColors.wellnessBlack,
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          AppText(
                            fontSize: 14.sp,
                            height: 21 / 14,
                            text: 'Stay Inspired- Episode 1 ',
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      AppImages.speaker,
                      height: 24.r,
                      width: 24.r,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Slider(
                  value: 0.45,
                  onChanged: (v) {},
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        fontSize: 12.sp,
                        text: '1:53',
                        fontWeight: FontWeight.w500,
                        color: AppColors.wellnessBlack,
                      ),
                      AppText(
                        fontSize: 12.sp,
                        text: '-1:53',
                        fontWeight: FontWeight.w500,
                        color: AppColors.wellnessBlack,
                      ),
                    ]),
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  children: [
                    AppText(
                      fontSize: 16.sp,
                      height: 19 / 16,
                      text: '1x',
                      fontWeight: FontWeight.w600,
                      color: AppColors.wellnessBlack,
                    ),
                    SizedBox(
                      width: 60.w,
                    ),
                    Image.asset(
                      AppImages.backward,
                      height: 23.r,
                      width: 22.r,
                    ),
                    SizedBox(
                      width: 32.w,
                    ),
                    Container(
                      height: 63.r,
                      width: 63.r,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.wellnessBlack,
                      ),
                      child: Icon(
                        Icons.pause,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: 32.w,
                    ),
                    Image.asset(
                      AppImages.foward,
                      height: 23.r,
                      width: 22.r,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Align(alignment: Alignment.bottomCenter, child: BottomBar())
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
          color: AppColors.primaryBlue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6.r), topRight: Radius.circular(6.r))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AppText(
            fontSize: 14.sp,
            height: 19 / 14,
            text: 'Transcript',
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
          Container(
            width: 96.w,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
            decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20.r)),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AppText(
                  fontSize: 12.sp,
                  height: 19 / 12,
                  text: 'EXPAND',
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                SizedBox(
                  width: 7.w,
                ),
                Image.asset(
                  AppImages.link,
                  height: 13.r,
                  width: 13.r,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
