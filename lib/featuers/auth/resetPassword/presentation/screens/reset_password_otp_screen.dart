import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';

import '../widgets/reset_password_with_otp/reset_password_with_otp_body_section.dart';

class ResetPasswordOtpScreen extends StatelessWidget {
  const ResetPasswordOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: const ResetPasswordWithOtpBodySection(),
          ),
        ),
      ),
    );
  }
}
