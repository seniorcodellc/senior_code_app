import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';
import '../../data/test_terms_and_conditions_data.dart';

class TermsAndConditionsDescriptionSection extends StatelessWidget {
  final int termsListIndex;

  const TermsAndConditionsDescriptionSection(
      {super.key, required this.termsListIndex});

  @override
  Widget build(BuildContext context) {
    return Text(
      terms[termsListIndex]['description']!,
      style: AppStyles.getRegularStyle(
        fontSize: 14,
        fontFamily: FontFamilies.interFamily,
        color: AppColors.midGray,
      ),
    );
  }
}
