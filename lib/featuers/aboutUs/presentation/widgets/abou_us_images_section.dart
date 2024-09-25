import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/widgets/custom_image_provider_from_assets.dart';
import '../../../../exports.dart';
import '../../data/about_us_photo_paths.dart';
import 'about_us_dynamic_photo_layout_section.dart';

class AbouUsImagesSection extends StatelessWidget {
  const AbouUsImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomImageProviderFromAssets(
          assetsImagePath: AppAssets.firstAboutUsImage,
          assetsImageHeight: 131,
          assetImagefit: BoxFit.cover,
          assetsImageRadius: 10,
        ),
        22.vs,
        AboutUsDynamicPhotoLayoutSection(
          assetsImageRadius: 10,
          imageWidth: 147,
          photoPaths: aboutUsPhotoPaths,
          isNetworkImage: false, //! Set to true if using network images
          imageHeight: 131.0,
          assetImagefit: BoxFit.cover,
        ),
      ],
    );
  }
}
