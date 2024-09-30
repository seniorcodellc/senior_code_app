import 'package:senior_code_app/core/extensions.dart';
import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/custome_svg_image.dart';
import '../../../../exports.dart';

class MyAccountLogoutButton extends StatelessWidget {
// ! In the future, I will refactor this button to make it reusable and customizable if it is needed again (Shared Widget).
// ! والله تعبااااااااااااااااااان
  const MyAccountLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        minimumSize: Size(343.w, 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              14.r,
            ),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              0.w,
              16.h,
              16.w,
              16.h,
            ),
            child: CustomSVGImage(
              asset: AppAssets.logOutIcon,
              color: AppColors.crimsonRedColor,
              height: 24.h,
              width: 24.w,
            ),
          ),
          Text(
            "Logout",
            style: AppStyles.getBoldStyle(
              color: AppColors.crimsonRedColor,
              fontSize: 16,
              fontFamily: FontFamilies.fontFamilyNunitoSans,
            ),
          ),
        ],
      ),
    );
  }
}
