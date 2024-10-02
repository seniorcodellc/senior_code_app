import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ReviewsUserName extends StatelessWidget {
  const ReviewsUserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "John Doe",
      style: AppStyles.getSemiBoldStyle(
        fontFamily: FontFamilies.interFamily,
        fontSize: 16,
        color: AppColors.white,
      ),
    );
  }
}
