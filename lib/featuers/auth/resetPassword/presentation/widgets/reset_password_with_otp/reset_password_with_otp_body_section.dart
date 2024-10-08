import 'package:senior_code_app/core/extensions.dart';
import '../../../../../../config/routes/app_routes.dart';
import '../../../../../../exports.dart';
import '../reset_password_app_bar_section.dart';
import '../reset_password_button_section.dart';
import 'reset_password_with_otp_resen_and_counter_section.dart';
import 'reset_password_with_otp_text_and_otp_section.dart';

class ResetPasswordWithOtpBodySection extends StatelessWidget {
  const ResetPasswordWithOtpBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        27.vs,
        const ResetPasswordAppBarSection(),
        23.vs,
        const ResetPasswordWithOtpTextAndOtpSection(),
        29.vs,
        ResetPasswordButtonSection(
          onPressed: () {
            Navigator.pushNamed(context, Routes.resetPasswordRoute);
          },
        ),
        29.vs,
        const ResetPasswordWithOtpResenAndCounterSection(),
      ],
    );
  }
}
