
import 'package:senior_code_app/core/extensions.dart';


import '../../../../../exports.dart';
import '../widgets/reset_password_with_number/reset_password_with_number_body.dart';

class ResetPasswordWithNumberScreen extends StatelessWidget {
  const ResetPasswordWithNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: const ResetPasswordWithNumberBody(),
          ),
        ),
      ),
    );
  }
}
