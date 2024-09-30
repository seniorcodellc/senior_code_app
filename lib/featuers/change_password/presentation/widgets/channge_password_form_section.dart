import 'package:senior_code_app/core/extensions.dart';
import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../../../../exports.dart';
import 'change_password_change_button_section.dart';

class ChanngePasswordFormSection extends StatelessWidget {
  const ChanngePasswordFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const ChangePasswordChangeButton(),
      ],
    );
  }
}
