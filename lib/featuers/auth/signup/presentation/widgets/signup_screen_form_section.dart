import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/helpers/app_regex.dart';
import 'package:senior_code_app/featuers/auth/managers/auth_cubit/auth_cubit.dart';
import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/custome_svg_image.dart';
import '../../../../../core/widgets/text_form_field.dart';
import '../../../../../exports.dart';
import '../../../data/models/sign_up_models/signup_request_model/signup_request_model.dart';
import 'date_picker_text_field.dart';

class SignupScreenFormSection extends StatefulWidget {
  const SignupScreenFormSection({super.key});

  @override
  State<SignupScreenFormSection> createState() =>
      _SignupScreenFormSectionState();
}

class _SignupScreenFormSectionState extends State<SignupScreenFormSection> {
  FocusNode focusNode = FocusNode();
  DateTime? selectedDate;
  bool isObSecureText = true;
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;

  void _onDateSelected(DateTime date) {
    setState(() {
      selectedDate = date; // Store the selected date
    });
  }

  @override
  void initState() {
    super.initState();
    passwordController = context.read<AuthCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKeySignup,
      child: Column(
        children: [
          Text(
            "Sign up",
            style: AppStyles.getBoldStyle(
              fontSize: 32,
              color: AppColors.white,
            ),
          ),
          12.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: AppStyles.getMediumStyle(
                  fontSize: 12,
                  color: AppColors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "login",
                  style: AppStyles.getSemiBoldStyle(
                    fontSize: 12,
                    color: AppColors.secondPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
          42.vs,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Full Name",
              style: AppStyles.getMediumStyle(
                color: AppColors.white,
                fontSize: 12,
              ),
            ),
          ),
          2.vs,
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 8) {
                return 'Please enter your full name';
              }
            },
            controller: context.read<AuthCubit>().fullNameController,
            contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
            hintText: "Lois Becket",
            radius: 10,
            hintStyle: AppStyles.getMediumStyle(
              fontSize: 14,
              color: AppColors.black,
            ),
          ),
          16.vs,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Email",
              style: AppStyles.getMediumStyle(
                color: AppColors.white,
                fontSize: 12,
              ),
            ),
          ),
          2.vs,
          AppTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<AuthCubit>().emailController,
            contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
            hintText: "Loisbecket@gmail.com",
            radius: 10,
            hintStyle: AppStyles.getMediumStyle(
              fontSize: 14,
              color: AppColors.black,
            ),
          ),
          16.vs,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Date of Birth",
              style: AppStyles.getMediumStyle(
                color: AppColors.white,
                fontSize: 12,
              ),
            ),
          ),
          2.vs,
          DatePickerTextField(
            pickedDateColor: AppColors.black, // The picked date color here

            fillColor: AppColors.white,
            hintStyle: AppStyles.getMediumStyle(
              fontSize: 14,
              color: AppColors.black,
            ),
            controller: context.read<AuthCubit>().birthDayController,
            initialDate: selectedDate,
            onDateSelected: _onDateSelected,
            hintText: '18/03/2024',
            suffixIcon: const CustomSVGImage(
              fit: BoxFit.scaleDown,
              asset: AppAssets.calenderIcon,
            ),
          ),
          16.vs,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Phone Number",
              style: AppStyles.getMediumStyle(
                color: AppColors.white,
                fontSize: 12,
              ),
            ),
          ),
          2.vs,
          IntlPhoneField(
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: AppStyles.getMediumStyle(
                  fontSize: 14,
                  color: AppColors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
                filled: true, // Enable background color
                fillColor: AppColors.white,
                contentPadding: EdgeInsets.fromLTRB(
                  27.w,
                  14.h,
                  27.w,
                  14.h,
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
                context.read<AuthCubit>().phone = phone.number;
                print('Complete Phone Number: ${phone.completeNumber}');
              },
              onCountryChanged: (country) {
                context.read<AuthCubit>().countryId = country.code;
                print(
                    'Country changed to: ${country.name}, Code: ${country.dialCode}');
              },
              onSaved: (phone) {
                context.read<AuthCubit>().phone = phone!.number;
                print('OnSaved Phone Number: ${phone.number}');
              },
              onSubmitted: (phone) {
                context.read<AuthCubit>().phone = phone;
                print('OnSubmitted Phone Number: $phone');
              }),
          // AppTextFormField(
          //   prefixIcon: const CustomSVGImage(
          //     fit: BoxFit.scaleDown
          //     asset: AppAssets.arrowDownIcon,
          //   ),
          //   contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
          //   hintText: "(454) 726-0592",
          //   radius: 10,
          //   hintStyle: AppStyles.getMediumStyle(
          //     fontSize: 14,
          //     color: AppColors.black,
          //   ),
          // ),
          16.vs,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Set Password",
              style: AppStyles.getMediumStyle(
                color: AppColors.white,
                fontSize: 12,
              ),
            ),
          ),
          2.vs,
          AppTextFormField(
            controller: context.read<AuthCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            radius: 10,
            contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
            isObscureText: isObSecureText,
            hintText: "*******",
            hintStyle: AppStyles.getMediumStyle(
              fontSize: 14,
              color: AppColors.black,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                isObSecureText ? Icons.visibility_off : Icons.visibility,
                color: AppColors.grey,
              ),
              onPressed: () {
                setState(
                  () {
                    isObSecureText = !isObSecureText;
                  },
                );
              },
            ),
          ),
          24.vs,
          AppTextButton(
            onPressed: () {
              validateThenDoSignup(context);
            },
            backgroundColor: AppColors.mainButtonBlueColor,
            buttonWidth: 327.w,
            buttonHeight: 65.h,
            borderRadius: 10.r,
            buttonText: "Register",
            textStyle: AppStyles.getMediumStyle(
              fontSize: 14,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}

void validateThenDoSignup(BuildContext context) {
  if (context.read<AuthCubit>().formKeySignup.currentState!.validate()) {
    context.read<AuthCubit>().emitSignupStates(
          SignupRequestBodyModel(
            fullName: context.read<AuthCubit>().fullNameController.text,
            email: context.read<AuthCubit>().emailController.text,
            phone: context.read<AuthCubit>().phone!,
            password: context.read<AuthCubit>().passwordController.text,
            birthDay: context.read<AuthCubit>().birthDayController.text,
            countryId: context.read<AuthCubit>().countryId!,
          ),
        );
  }
}
