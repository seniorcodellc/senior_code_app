import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/custome_svg_image.dart';
import '../../../../exports.dart';

class MyAccountGenralListTilesAndText extends StatelessWidget {
  const MyAccountGenralListTilesAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            "General",
            style: AppStyles.getBoldStyle(
              fontSize: 16,
              fontFamily: FontFamilies.interFamily,
              color: AppColors.white,
            ),
          ),
        ),
        ListTile(
          leading: const CustomSVGImage(
            asset: AppAssets.editProfileIcon,
            color: AppColors.white,
            height: 22.01,
            width: 18.38,
          ),
          title: Text(
            "Edit Profile",
            style: AppStyles.getBoldStyle(
              color: AppColors.white,
              fontSize: 16,
              fontFamily: FontFamilies.fontFamilyNunitoSans,
            ),
          ),
          onTap: () {},
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.white,
          ),
        ),
        ListTile(
          leading: const CustomSVGImage(
            asset: AppAssets.languageIcon,
            color: AppColors.white,
            height: 22.01,
            width: 18.38,
          ),
          title: Text(
            "Language",
            style: AppStyles.getBoldStyle(
              color: AppColors.white,
              fontSize: 16,
              fontFamily: FontFamilies.fontFamilyNunitoSans,
            ),
          ),
          onTap: () {},
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "English (US)",
                style: AppStyles.getBoldStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontFamily: FontFamilies.fontFamilyNunitoSans,
                ),
              ),
              20.hs,
              const Icon(
                Icons.keyboard_arrow_right,
                color: AppColors.white,
              ),
            ],
          ),
        ),
        ListTile(
          leading: const CustomSVGImage(
            asset: AppAssets.changePasswordIcon,
            color: AppColors.white,
            height: 22.01,
            width: 18.38,
          ),
          title: Text(
            "Chnage Password",
            style: AppStyles.getBoldStyle(
              color: AppColors.white,
              fontSize: 16,
              fontFamily: FontFamilies.fontFamilyNunitoSans,
            ),
          ),
          onTap: () {},
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.white,
          ),
        ),
        ListTile(
          leading: const CustomSVGImage(
            asset: AppAssets.termsIcon,
            color: AppColors.white,
            height: 22.01,
            width: 18.38,
          ),
          title: Text(
            "Terms And Conditions",
            style: AppStyles.getBoldStyle(
              color: AppColors.white,
              fontSize: 16,
              fontFamily: FontFamilies.fontFamilyNunitoSans,
            ),
          ),
          onTap: () {},
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
