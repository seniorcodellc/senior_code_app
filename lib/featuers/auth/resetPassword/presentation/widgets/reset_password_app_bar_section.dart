import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../../exports.dart';

class ResetPasswordAppBarSection extends StatelessWidget {
  const ResetPasswordAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SeniorCodeAppBarArrow(
      backArrowIconColor: AppColors.black,
      height: 24.h,
      width: 24.w,
    );
  }
}
