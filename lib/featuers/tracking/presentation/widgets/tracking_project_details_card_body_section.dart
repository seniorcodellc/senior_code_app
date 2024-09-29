import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../exports.dart';

class TrackingProjectDetailsCardBodySection extends StatelessWidget {
  const TrackingProjectDetailsCardBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 12.h,
          right: 12.w,
          child: const CustomImageProviderFromAssets(
            assetsImagePath: AppAssets.kararSatImage,
            assetsImageHeight: 101,
            assetsImageWidth: 107,
          ),
        ),
        Positioned(
          top: 30.h,
          left: 20.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Karar Application",
                style: AppStyles.getBoldStyle(
                  fontSize: 12.12,
                  fontFamily: FontFamilies.poppinsFamily,
                ),
              ),
              4.vs,
              Text(
                "link figma",
                style: AppStyles.getRegularStyle(
                  fontSize: 12.12,
                  fontFamily: FontFamilies.poppinsFamily,
                ),
              ),
              4.vs,
              Text(
                "UI/UX Design",
                style: AppStyles.getSemiBoldStyle(
                  fontSize: 12,
                  fontFamily: FontFamilies.poppinsFamily,
                ),
              ),
              10.vs,
              Text(
                "Cairo, EGYPT",
                style: AppStyles.getSemiBoldStyle(
                  fontSize: 12,
                  fontFamily: FontFamilies.poppinsFamily,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
