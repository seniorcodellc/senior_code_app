import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../exports.dart';

class TrackingBackToHomeButtonSection extends StatelessWidget {
  const TrackingBackToHomeButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: "Back To Home",
      textStyle: AppStyles.getMediumStyle(
        color: AppColors.white,
        fontSize: 14,
      ),
      onPressed: () {},
      backgroundColor: AppColors.steelBlue.withOpacity(0.77),
      borderRadius: 10,
      buttonHeight: 48,
      buttonWidth: 327,
      verticalPadding: 10,
      horizontalPadding: 24,
    );
  }
}
