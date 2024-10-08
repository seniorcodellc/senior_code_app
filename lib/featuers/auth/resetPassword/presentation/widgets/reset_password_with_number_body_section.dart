import 'package:senior_code_app/core/extensions.dart';
import '../../../../../../exports.dart';
import 'reset_password_app_bar_section.dart';
import 'reset_password_with_number/reset_password_with_number_form_section.dart';

class ResetPasswordWithNumberBody extends StatelessWidget {
  const ResetPasswordWithNumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        27.vs,
        const ResetPasswordAppBarSection(),
        33.vs,
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 12.w),
          child: const ResetPasswordWithNumberFormSection(),
        ),
      ],
    );
  }
}
