import 'package:senior_code_app/core/extensions.dart';

import '../../../../../../core/utils/app_styels.dart';
import '../../../../../../exports.dart';
import '../../../../verification/presentation/widgets/otp_input_field_section.dart';
import '../reset_password_text_section.dart';

class ResetPasswordWithOtpTextAndOtpSection extends StatelessWidget {
  const ResetPasswordWithOtpTextAndOtpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ResetPasswordText(),
          23.vs,
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'Please enter the 6-digit code sent to the number +1115225553. ',
                  style: AppStyles.getMediumStyle(
                    color: AppColors.lightGrayColor,
                    fontSize: 16,
                    fontFamily: FontFamilies.interFamily,
                  ),
                ),
                TextSpan(
                  text: 'Change Number',
                  style: AppStyles.getMediumStyle(
                    color: AppColors.steelBlue,
                    fontSize: 16,
                    fontFamily: FontFamilies.interFamily,
                  ),
                ),
              ],
            ),
          ),
          24.vs,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: OtpInputFieldSection(
              gap: 10.w,
              numberOfFields: 6,
              borderColor: Colors.black,
              focusedBorderColor: AppColors.skyBlue,
              onSubmit: (code) {
                //! Handle OTP submission
              },
            ),
          ),
        ],
      ),
    );
  }
}
