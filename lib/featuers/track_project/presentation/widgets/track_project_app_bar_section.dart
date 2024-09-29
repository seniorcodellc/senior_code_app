import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../core/widgets/senior_code_icon.dart';
import '../../../../exports.dart';

class TrackProjectAppBarSection extends StatelessWidget {
  const TrackProjectAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SeniorCodeAppBarArrow(
          height: 15.62,
          width: 18.11,
        ),
        SeniorCodeIcon(),
        CustomImageProviderFromAssets(
          assetsImagePath: AppAssets.userImage,
          assetsImageHeight: 30,
          assetImagefit: BoxFit.cover,
          assetsImageWidth: 30,
        ),
      ],
    );
  }
}
