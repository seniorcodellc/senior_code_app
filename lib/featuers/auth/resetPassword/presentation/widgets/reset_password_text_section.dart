import '../../../../../core/utils/app_styels.dart';
import '../../../../../exports.dart';

class ResetPasswordText extends StatelessWidget {
  const ResetPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Reset Password",
      style: AppStyles.getSemiBoldStyle(
        color: AppColors.black,
        fontSize: 24,
      ),
    );
  }
}
