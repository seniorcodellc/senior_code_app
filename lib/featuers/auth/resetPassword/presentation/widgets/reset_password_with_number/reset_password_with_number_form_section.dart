import 'package:flutter/foundation.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../../../config/routes/app_routes.dart';
import '../../../../../../core/utils/app_styels.dart';
import '../../../../../../exports.dart';
import '../reset_password_button_section.dart';
import '../reset_password_text_section.dart';

class ResetPasswordWithNumberFormSection extends StatefulWidget {
  const ResetPasswordWithNumberFormSection({super.key});

  @override
  State<ResetPasswordWithNumberFormSection> createState() =>
      _ResetPasswordWithNumberFormSectionState();
}

class _ResetPasswordWithNumberFormSectionState
    extends State<ResetPasswordWithNumberFormSection> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ResetPasswordText(),
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
        ResetPasswordButtonSection(
          onPressed: () {
            Navigator.pushNamed(context, Routes.resetPasswordOtpRoute);
          },
        ),
      ],
    );
  }
}
