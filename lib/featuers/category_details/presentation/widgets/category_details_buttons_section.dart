

import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../exports.dart';

class CategoryDetailsButtonsSection extends StatelessWidget {
  const CategoryDetailsButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppTextButton(
          buttonHeight: 28,
          buttonWidth: 90,
          borderRadius: 10,
          backgroundColor: AppColors.white,
          buttonText: "Skip",
          textStyle: AppStyles.getSemiBoldStyle(
            color: AppColors.steelBlue,
            fontSize: 11,
          ),
          onPressed: () {},
        ),
        25.hs,
        AppTextButton(
          buttonHeight: 28,
          buttonWidth: 90,
          borderRadius: 10,
          backgroundColor: AppColors.steelBlue,
          buttonText: "Reserve",
          textStyle: AppStyles.getSemiBoldStyle(
            color: AppColors.white,
            fontSize: 11,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
