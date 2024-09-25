import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../exports.dart';

class ConfirmedScreenButtonSection extends StatelessWidget {
  const ConfirmedScreenButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      borderRadius: 10,
      buttonHeight: 58,
      backgroundColor: AppColors.steelBlue,
      buttonText: "Back To Home",
      textStyle: AppStyles.getBoldStyle(color: AppColors.white),
      onPressed: () {
        //! TODO: Navigate to the home screen when the button is pressed.
        //! TODO: Problem that needs to be solved: Implement navigation functionality.
      },
    );
  }
}
