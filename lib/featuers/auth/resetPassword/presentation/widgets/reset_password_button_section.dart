import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../exports.dart';

class ResetPasswordButtonSection extends StatelessWidget {
  final void Function() onPressed;
  const ResetPasswordButtonSection({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      horizontalPadding: 129,
      verticalPadding: 17.5,
      buttonHeight: 54,
      borderRadius: 10,
      backgroundColor: AppColors.steelBlue,
      buttonText: "Next",
      textStyle: AppStyles.getSemiBoldStyle(
        color: AppColors.white,
        fontSize: 16,
      ),
      onPressed: onPressed,
    );
  }
}
