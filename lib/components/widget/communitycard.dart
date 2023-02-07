import 'package:faramove_test/components/components.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                image,
                height: 100.h,
                width: 101.w,
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AppText(
                      fontSize: 14.sp,
                      height: 17 / 14,
                      text: text,
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
                      height: 11.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                            height: 32.h,
                            width: 90.w,
                            child: Stack(children: [
                              ImageItem(
                                left: 0.r,
                                image: AppImages.image4,
                              ),
                              ImageItem(
                                left: 20.r,
                                image: AppImages.image3,
                              ),
                              ImageItem(
                                left: 40.r,
                                image: AppImages.image2,
                              ),
                              ImageItem(
                                left: 60.r,
                                image: AppImages.image1,
                              ),
                            ])),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
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
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          Divider(
            color: AppColors.backgroundColor,
            height: 4,
            thickness: 2,
          )
        ],
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    required this.left,
    required this.image,
  });
  final double left;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      child: CircleAvatar(
        radius: 12,
        backgroundImage: AssetImage(image),
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
