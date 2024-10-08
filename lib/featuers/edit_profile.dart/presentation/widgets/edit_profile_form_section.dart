import 'package:flutter/foundation.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:senior_code_app/core/extensions.dart';
import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/custome_svg_image.dart';
import '../../../../core/widgets/field_calender_icon.dart';
import '../../../../core/widgets/gender_text_form_field.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../../../../exports.dart';
import '../../../auth/signup/presentation/widgets/date_picker_text_field.dart';
import 'edit_profile_update_button_section.dart';

class EditProfileFormSection extends StatefulWidget {
  const EditProfileFormSection({super.key});

  @override
  State<EditProfileFormSection> createState() => _EditProfileFormSectionState();
}

class _EditProfileFormSectionState extends State<EditProfileFormSection> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  void _onDateSelected(DateTime date) {
    setState(() {
      _selectedDate = date; // Store the selected date
    });
  }

  String? selectedGender;
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: "Ahmed Adel",
          hintStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            fontFamily: FontFamilies.interFamily,
            color: AppColors.slateGrayColor,
          ),
          radius: 10,
          contentPadding: EdgeInsetsDirectional.only(
            start: 12.w,
            top: 18.h,
            bottom: 18.h,
          ),
        ),
        10.vs,
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
        10.vs,
        AppTextFormField(
          hintText: "AhmedAdel@gmail.com",
          hintStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            fontFamily: FontFamilies.interFamily,
            color: AppColors.slateGrayColor,
          ),
          radius: 10,
          contentPadding: EdgeInsetsDirectional.only(
            start: 12.w,
            top: 18.h,
            bottom: 18.h,
          ),
          suffixIcon: const CustomSVGImage(
            fit: BoxFit.scaleDown,
            asset: AppAssets.emailProfileIcon,
            height: 16,
            width: 20,
            color: AppColors.slateGrayColor,
          ),
        ),
        10.vs,
        DatePickerTextField(
          contentPadding: EdgeInsetsDirectional.only(
            start: 12.w,
            top: 18.h,
            bottom: 18.h,
          ),
          pickedDateColor: AppColors.slateGrayColor, // The picked date color
          radius: 10,
          fillColor: AppColors.white,
          hintStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            fontFamily: FontFamilies.interFamily,
            color: AppColors.slateGrayColor,
          ),
          controller: _dateController,
          initialDate: _selectedDate,
          onDateSelected: _onDateSelected,
          hintText: 'Date',
          suffixIcon: const FieldCalenderIcon(
            calenderIconColor: AppColors.slateGrayColor,
            calenderIconSize: 20,
          ),
        ),
        10.vs,
        GenderTextFormField(
          onGenderSelected: (value) {
            setState(() {
              selectedGender = value;
            });
          },
          hintText: "Select Gender",
          hintStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            fontFamily: FontFamilies.interFamily,
            color: AppColors.slateGrayColor,
          ),
          radius: 10,
          contentPadding: EdgeInsetsDirectional.only(
            start: 12.w,
            top: 18.h,
            bottom: 18.h,
          ),
          maleText: "Male",
          maleTextStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            fontFamily: FontFamilies.interFamily,
            color: AppColors.slateGrayColor,
          ),
          femaleText: "Female",
          femaleTextStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            fontFamily: FontFamilies.interFamily,
            color: AppColors.slateGrayColor,
          ),
        ),
        10.vs,
        AppTextFormField(
          hintText: "974 Deckow Lake",
          hintStyle: AppStyles.getMediumStyle(
            fontSize: 14,
            fontFamily: FontFamilies.interFamily,
            color: AppColors.slateGrayColor,
          ),
          radius: 10,
          contentPadding: EdgeInsetsDirectional.only(
            start: 12.w,
            top: 18.h,
            bottom: 18.h,
          ),
        ),
        58.vs,
        const EditProfileUpdateButton(),
      ],
    );
  }
}
