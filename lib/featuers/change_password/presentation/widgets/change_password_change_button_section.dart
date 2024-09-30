import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../exports.dart';

class ChangePasswordChangeButton extends StatelessWidget {
  const ChangePasswordChangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      horizontalPadding: 80.5,
      verticalPadding: 14.5,
      borderRadius: 10,
      buttonHeight: 52,
      backgroundColor: AppColors.steelBlue,
      buttonText: "Change Password",
      textStyle: AppStyles.getBoldStyle(
        color: AppColors.white,
        fontFamily: FontFamilies.interFamily,
      ),
      onPressed: () {},
    );
  }
}
