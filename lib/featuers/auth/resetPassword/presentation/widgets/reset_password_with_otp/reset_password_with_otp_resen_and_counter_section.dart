import 'package:senior_code_app/core/extensions.dart';

import '../../../../../../core/utils/app_styels.dart';
import '../../../../../../exports.dart';

class ResetPasswordWithOtpResenAndCounterSection extends StatelessWidget {
  const ResetPasswordWithOtpResenAndCounterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Resend code after ',
                  style: AppStyles.getMediumStyle(
                    color: AppColors.lightGrayColor,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    height: 0.06,
                  ),
                ),
                TextSpan(
                  text: '00:58',
                  style: AppStyles.getMediumStyle(
                    color: AppColors.steelBlue,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    height: 0.06,
                  ),
                ),
              ],
            ),
          ),
        ),
        24.vs,
        Center(
          child: Text(
            'Resend Code',
            style: AppStyles.getMediumStyle(
              color: AppColors.steelBlue,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 0.06,
            ),
          ),
        ),
      ],
    );
  }
}
