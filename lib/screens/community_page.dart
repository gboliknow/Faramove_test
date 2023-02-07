import 'package:faramove_test/components/components.dart';
import 'package:faramove_test/components/widget/communitycard.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 1,
        title: AppText(
          fontSize: 20.sp,
          text: 'Community',
          fontWeight: FontWeight.w600,
          color: AppColors.wellnessBlack,
        ),
        actions: <Widget>[
          Container(
            width: 32.r,
            height: 32.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.backgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AppImages.search),
            ),
          ),
          SizedBox(
            width: 15.w,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 22.h,
          ),
          CommunityCard(
            image: AppImages.useofdrug,
            text: 'Talks about treatment, Pathways',
          ),
          SizedBox(
            height: 22.h,
          ),
          CommunityCard(
            image: AppImages.useofdrug1,
            text: 'How was your first session experiencee?',
          ),
          SizedBox(
            height: 22.h,
          ),
          CommunityCard(
            image: AppImages.useofdrug2,
            text: 'How to live with cancer and be mentally stable .',
          ),
          SizedBox(
            height: 22.h,
          ),
          CommunityCard(
            image: AppImages.theraphy,
            text: 'Is reliance on drugs a good thing?',
          ),
          SizedBox(
            height: 22.h,
          ),
          CommunityCard(
            image: AppImages.useofdrug,
            text: 'Talks about treatment, Pathways',
          ),
          SizedBox(
            height: 22.h,
          ),
        ],
      ),
    );
  }
}
