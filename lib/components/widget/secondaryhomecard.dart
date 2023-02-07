

import 'package:faramove_test/components/components.dart';

class SecondaryHomeContainer extends StatelessWidget {
  const SecondaryHomeContainer({
    super.key,
    required this.text,
    this.subtext,
  });
  final String text;
  final String? subtext;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                fontSize: 16.sp,
                text: text,
                fontWeight: FontWeight.w700,
                height: 20 / 16,
                color: AppColors.wellnessBlack,
              ),
              Visibility(
                visible: subtext != null,
                child: AppText(
                  fontSize: 12.sp,
                  text: subtext ?? '',
                  fontWeight: FontWeight.w400,
                  height: 18 / 12,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            AppImages.arrow,
            height: 16.r,
            width: 26.r,
          ),
        ],
      ),
    );
  }
}
