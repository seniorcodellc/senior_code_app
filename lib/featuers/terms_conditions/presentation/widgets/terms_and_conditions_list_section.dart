import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/featuers/terms_conditions/presentation/widgets/terms_and_conditions_description_section.dart';
import '../../../../exports.dart';
import '../../data/test_terms_and_conditions_data.dart';
import 'terms_and_conditions_title_section.dart';

class TermsAndConditionsListSection extends StatelessWidget {
  const TermsAndConditionsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(terms.length, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 17.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TermsAndConditionsTitle(termsListIndex: index),
              16.vs,
              TermsAndConditionsDescriptionSection(termsListIndex: index),
            ],
          ),
        );
      }),
    );
  }
}
