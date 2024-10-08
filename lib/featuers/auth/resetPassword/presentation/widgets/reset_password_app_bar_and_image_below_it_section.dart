import 'package:senior_code_app/core/extensions.dart';
import '../../../../../exports.dart';
import 'reset_password_app_bar_section.dart';

class ResetPasswordAppBarAndImageBelowItSection extends StatelessWidget {
  const ResetPasswordAppBarAndImageBelowItSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ResetPasswordAppBarSection(),
          ],
        ),
        32.vs,
        SizedBox(
          height: 220.h,
          width: 233.53.w,
          child: Image.asset(AppAssets.resetPasswordImage),
        ),
      ],
    );
  }
}
