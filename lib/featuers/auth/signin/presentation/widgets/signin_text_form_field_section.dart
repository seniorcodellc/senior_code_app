import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/featuers/auth/managers/auth_cubit/auth_cubit.dart';
import '../../../../../core/utils/app_styels.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/text_form_field.dart';
import '../../../../../exports.dart';
import '../../../data/models/login_models/login_request_model/login_request_model.dart';
import 'remember_me_and_forget_password_row_section.dart';

class SigninTextFormFieldSection extends StatefulWidget {
  const SigninTextFormFieldSection({super.key});

  @override
  State<SigninTextFormFieldSection> createState() =>
      _SigninScreenBodySectionState();
}

class _SigninScreenBodySectionState extends State<SigninTextFormFieldSection> {
  bool isObSecureText = true;
  bool hasLowercaseLetter = false;
  bool hasUppercaseLetter = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinimumLength = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<AuthCubit>().passwordController;
    // setupPasswordControllerListner();
  }

  // void setupPasswordControllerListner() {
  //   passwordController.addListener(
  //     () {
  //       setState(
  //         () {
  //           hasLowercaseLetter = AppRegex.hasLowerCase(
  //             passwordController.text,
  //           );
  //           hasUppercaseLetter = AppRegex.hasUpperCase(
  //             passwordController.text,
  //           );
  //           hasNumber = AppRegex.hasNumber(
  //             passwordController.text,
  //           );
  //           hasSpecialCharacter = AppRegex.hasSpecialCharacter(
  //             passwordController.text,
  //           );
  //           hasMinimumLength = AppRegex.hasMinLength(
  //             passwordController.text,
  //           );
  //         },
  //       );
  //     },
  //   );
    // to listen to the changes of the user text and match it with the regex.
  // }

  @override
  void dispose() {
    context.read<AuthCubit>().passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Email",
              style: AppStyles.getMediumStyle(
                color: AppColors.white,
              ),
            ),
          ),
          2.vs,
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email address';
              }
            },
            contentPadding: EdgeInsets.fromLTRB(27.w, 14.h, 27.w, 14.h),
            hintText: "Loisbecket@gmail.com",
            controller: context.read<AuthCubit>().emailController,
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
              "Password",
              style: AppStyles.getMediumStyle(
                color: AppColors.white,
              ),
            ),
          ),
          2.vs,
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password ';
              }
            },
            controller: context.read<AuthCubit>().passwordController,
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
                color: AppColors.darkBlue,
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
          16.vs,
          const RememberMeAndForgetPasswordRowSection(),
          24.vs,
          AppTextButton(
            onPressed: () {
              validateThenDoLogin(context);
            },
            backgroundColor: AppColors.mainButtonBlueColor,
            buttonWidth: 327.w,
            buttonHeight: 65.h,
            borderRadius: 10.r,
            buttonText: "Log in",
            textStyle: AppStyles.getMediumStyle(
              fontSize: 14,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<AuthCubit>().formKey.currentState!.validate()) {
      context.read<AuthCubit>().emitLoginStates(
            LoginRequestModel(
              email: context.read<AuthCubit>().emailController.text,
              password: context.read<AuthCubit>().passwordController.text,
            ),
          );
    }
  }
}
