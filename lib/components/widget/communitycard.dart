
import 'package:faramove_test/components/components.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Image.asset(
            AppImages.useofdrug,
            height: 100.h,
            width: 101.w,
          ),
          SizedBox(
            width: 12.w,
          ),
          Column(
            children: <Widget>[
              AppText(
                fontSize: 14.sp,
                height: 17 / 14,
                text: 'Talks about treatment,\n Pathways',
                fontWeight: FontWeight.w600,
                color: AppColors.wellnessBlack,
              ),
              SizedBox(
                height: 7.h,
              ),
              Row(
                children: <Widget>[
                  TextAndIcon(
                    image: AppImages.person,
                    text: '200+',
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  TextAndIcon(
                    image: AppImages.letterbox,
                    text: '200+',
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 32.h,
                    width: 78.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: AppColors.primaryBlue),
                    alignment: Alignment.center,
                    child: AppText(
                      fontSize: 12.sp,
                      text: 'Join',
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class TextAndIcon extends StatelessWidget {
  const TextAndIcon({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          image,
          height: 15.r,
          width: 15.r,
        ),
        SizedBox(
          width: 8.w,
        ),
        AppText(
          fontSize: 14.sp,
          text: text,
          fontWeight: FontWeight.w500,
          color: AppColors.wellnessBlack,
        ),
      ],
    );
  }
}
