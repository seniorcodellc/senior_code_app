import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class CategoryDetailsQuestionTextSection extends StatelessWidget {
  const CategoryDetailsQuestionTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Would you like us to design an app like this for you?",
      style: AppStyles.getSemiBoldStyle(
        fontSize: 16,
        color: AppColors.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}
