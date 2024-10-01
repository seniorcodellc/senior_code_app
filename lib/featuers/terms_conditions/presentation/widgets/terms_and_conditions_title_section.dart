import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';
import '../../data/test_terms_and_conditions_data.dart';

class TermsAndConditionsTitle extends StatelessWidget {
  final int termsListIndex;
  const TermsAndConditionsTitle({super.key, required this.termsListIndex});

  @override
  Widget build(BuildContext context) {
    return Text(
      terms[termsListIndex]['title']!,
      style: AppStyles.getBoldStyle(
        fontSize: 16,
        color: AppColors.white,
        fontFamily: FontFamilies.interFamily,
      ),
    );
  }
}
