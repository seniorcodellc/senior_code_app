import 'package:flutter/foundation.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../../../core/utils/app_styels.dart';
import '../../../../../../core/widgets/app_text_button.dart';
import '../../../../../../exports.dart';

class ResetPasswordWithNumberForm extends StatefulWidget {
  const ResetPasswordWithNumberForm({super.key});

  @override
  State<ResetPasswordWithNumberForm> createState() =>
      _ResetPasswordWithNumberFormState();
}

class _ResetPasswordWithNumberFormState
    extends State<ResetPasswordWithNumberForm> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Reset Password",
          style: AppStyles.getSemiBoldStyle(
            color: AppColors.black,
            fontSize: 24,
          ),
        ),
        23.vs,
        Text(
          "Please enter the phone number associated with your account.",
          style: AppStyles.getMediumStyle(
            color: AppColors.lightGrayColor,
            fontSize: 14,
          ),
        ),
        23.vs,
        IntlPhoneField(
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: 'Phone Number',
            hintStyle: AppStyles.getMediumStyle(
              fontSize: 14,
              fontFamily: FontFamilies.interFamily,
              color: AppColors.slateGrayColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            filled: true, // Enable background color
            fillColor: AppColors.white,
            contentPadding: EdgeInsetsDirectional.symmetric(
              horizontal: 12.w,
              vertical: 18.h,
            ),
            counterText: '', // This line removes the "0/10" indicator
          ),
          style: AppStyles.getMediumStyle(
            fontSize: 14,
            fontFamily: FontFamilies.interFamily,
            color: AppColors.slateGrayColor,
          ),
          languageCode: "en",
          initialCountryCode: 'EG',
          //! TODO: In release mode, comment out the following KDebug print statements.
          //! TODO: In development or debug mode, uncomment them for testing purposes only.
          onChanged: (phone) {
            if (kDebugMode) {
              print('Complete Phone Number: ${phone.completeNumber}');
            }
          },
          onCountryChanged: (country) {
            if (kDebugMode) {
              print(
                  'Country changed to: ${country.name}, Code: ${country.dialCode}');
            }
          },
        ),
        40.vs,
        AppTextButton(
          horizontalPadding: 129,
          verticalPadding: 17.5,
          buttonHeight: 54,
          borderRadius: 10,
          backgroundColor: AppColors.steelBlue,
          buttonText: "Next",
          textStyle: AppStyles.getSemiBoldStyle(
            color: AppColors.white,
            fontSize: 16,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
