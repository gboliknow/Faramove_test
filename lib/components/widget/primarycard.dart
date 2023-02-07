import 'package:faramove_test/components/components.dart';

class PrimaryCard extends StatelessWidget {
  const PrimaryCard({
    super.key,
    required this.image,
    required this.text,
    required this.subtext,
    required this.color, required this.subtextColor,
  });
  final String image;
  final String text;
  final String subtext;
  final Color color;
   final Color subtextColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(6.r), color: color),
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  color:subtextColor,
                ),
              ],
            ),
          ),
          Image.asset(
            image,
            height: 70.r,
            width: 70.r,
          )
        ],
      ),
    );
  }
}
