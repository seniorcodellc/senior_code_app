import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/utils/app_styels.dart';
import 'package:senior_code_app/core/widgets/app_text_button.dart';
import 'package:senior_code_app/core/widgets/text_form_field.dart';

import '../../../../exports.dart';
import '../../../home/presentation/widgets/home_and_related_screens_custom_app_bar.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                42.vs,
                const HomeAndRelatedScreensCustomAppBar(
                  homeCustomAppBarTextData: "Change Password",
                  homeCustomAppBarHorizontalPadding: 0,
                ),
                28.vs,
                Column(
                  children: [
                    AppTextFormField(
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                        16.w,
                        12.h,
                        16.w,
                        12.h,
                      ),
                      cursorColor: AppColors.white,
                      inputStyle: AppStyles.getRegularStyle(
                        fontSize: 14,
                        color: AppColors.white,
                      ),
                      hintText: "Current Password",
                      fillColor: AppColors.transparent,
                      hintStyle: AppStyles.getRegularStyle(
                        fontSize: 14,
                        color: AppColors.white,
                      ),
                      radius: 8,
                      focusdBorderColor: AppColors.white,
                    ),
                    32.vs,
                    AppTextFormField(
                      cursorColor: AppColors.white,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                        16.w,
                        12.h,
                        16.w,
                        12.h,
                      ),
                      inputStyle: AppStyles.getRegularStyle(
                        fontSize: 14,
                        color: AppColors.white,
                      ),
                      hintText: "Enter New Password",
                      fillColor: AppColors.transparent,
                      hintStyle: AppStyles.getRegularStyle(
                        fontSize: 14,
                        color: AppColors.white,
                      ),
                      radius: 8,
                      focusdBorderColor: AppColors.white,
                    ),
                    32.vs,
                    AppTextFormField(
                      cursorColor: AppColors.white,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                        16.w,
                        12.h,
                        16.w,
                        12.h,
                      ),
                      inputStyle: AppStyles.getRegularStyle(
                        fontSize: 14,
                        color: AppColors.white,
                      ),
                      hintText: "Confirm New Password",
                      fillColor: AppColors.transparent,
                      hintStyle: AppStyles.getRegularStyle(
                        fontSize: 14,
                        color: AppColors.white,
                      ),
                      radius: 8,
                      focusdBorderColor: AppColors.white,
                    ),
                    56.vs,
                    AppTextButton(
                      horizontalPadding: 80.5,
                      verticalPadding: 14.5,
                      borderRadius: 10,
                      buttonHeight: 52,
                      backgroundColor: AppColors.steelBlue,
                      buttonText: "Change Password",
                      textStyle: AppStyles.getBoldStyle(
                        color: AppColors.white,
                        fontFamily: FontFamilies.interFamily,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
