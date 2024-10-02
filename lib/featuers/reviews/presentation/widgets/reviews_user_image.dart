import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../exports.dart';

class ReviewsUserImage extends StatelessWidget {
  const ReviewsUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomImageProviderFromAssets(
      assetsImagePath: AppAssets.userImage,
      assetsImageHeight: 40,
      assetsImageWidth: 40,
    );
  }
}
