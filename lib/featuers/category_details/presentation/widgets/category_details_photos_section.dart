

import '../../../../exports.dart';
import '../../../home/presentation/widgets/home_dynamic_photo_layout_section.dart';
import '../../data/category_details_photo_paths.dart';

class CategoryDetailsPhotosSection extends StatelessWidget {
  const CategoryDetailsPhotosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeDynamicPhotoLayoutSection(
      mainAxisSpacing: 22.13,
      crossAxisSpacing: 11.05,
      crossAxisCount: 4,
      assetsImageRadius: 0,
      imageWidth: 60,
      photoPaths: categoryDetailsPhotoPaths,
      isNetworkImage: false, //! Set to true if using network images
      imageHeight: 145.0,
      assetImagefit: BoxFit.contain,
    );
  }
}
