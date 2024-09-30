import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../exports.dart';

class MyAccountUserImageAndNameAndEmail extends StatelessWidget {
  const MyAccountUserImageAndNameAndEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsetsDirectional.fromSTEB(
            16.w,
            16.h,
            56.w,
            16.h,
          ),
          height: 90.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                14.r,
              ),
            ),
            color: AppColors.white,
          ),
          child: Row(
            children: [
              const CustomImageProviderFromAssets(
                assetsImageRadius: 29.0,
                assetsImagePath: AppAssets.userImage,
                assetsImageHeight: 58,
                assetsImageWidth: 58,
              ),
              16.hs,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Ahmed Adel",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.getBoldStyle(
                          fontSize: 20,
                          fontFamily: FontFamilies.interFamily,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "AhmedAdel@gmail.com",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.getRegularStyle(
                          fontSize: 14,
                          fontFamily: FontFamilies.interFamily,
                          color: AppColors.lightGrayColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}