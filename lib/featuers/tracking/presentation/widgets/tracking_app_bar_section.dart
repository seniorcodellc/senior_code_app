import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../exports.dart';

class TrackingAppBarSection extends StatelessWidget {
  const TrackingAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SeniorCodeAppBarArrow(
          height: 15.62,
          width: 18.11,
        ),
        Text(
          "Tracking",
          style: AppStyles.getSemiBoldStyle(
            fontSize: 24,
            fontFamily: FontFamilies.poppinsFamily,
            color: AppColors.white,
          ),
        ),
        const CustomImageProviderFromAssets(
          assetsImagePath: AppAssets.userImage,
          assetsImageHeight: 30,
          assetImagefit: BoxFit.cover,
          assetsImageWidth: 30,
        ),
      ],
    );
  }
}
