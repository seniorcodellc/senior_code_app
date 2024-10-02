import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ReviewsUserReview extends StatelessWidget {
  const ReviewsUserReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Senior Code Software House provides reliable, innovative solutions with a professional team. They focus on clean architecture, meet deadlines, and offer excellent support. Highly recommend for scalable software development and high-quality performance.",
      style: AppStyles.getSemiBoldStyle(
        fontFamily: FontFamilies.interFamily,
        fontSize: 16,
        color: AppColors.white,
      ),
    );
  }
}
