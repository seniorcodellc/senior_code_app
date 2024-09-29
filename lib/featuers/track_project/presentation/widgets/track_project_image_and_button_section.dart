import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../exports.dart';

class TrackProjectImageAndButtonSection extends StatelessWidget {
  const TrackProjectImageAndButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomImageProviderFromAssets(
          assetsImagePath: AppAssets.projectTrackingImage,
          assetsImageHeight: 241.34,
          assetsImageWidth: 323.89,
        ),
        85.66.vs,
        AppTextButton(
          backgroundColor: AppColors.thirdPrimaryColor.withOpacity(
            0.88,
          ),
          buttonText: "Next",
          textStyle: AppStyles.getBoldStyle(
            color: AppColors.white,
            fontFamily: FontFamilies.interFamily,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
