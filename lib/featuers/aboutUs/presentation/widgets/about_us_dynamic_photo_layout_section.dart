import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'about_us_photo_grid_item_section.dart';

class AboutUsDynamicPhotoLayoutSection extends StatelessWidget {
  final List<String> photoPaths;
  final bool isNetworkImage;
  final double? imageHeight;
  final double? imageWidth;
  final double? spacing;
  final BoxFit? assetImagefit;
  final double? assetsImageRadius;

  const AboutUsDynamicPhotoLayoutSection({
    super.key,
    required this.photoPaths,
    this.isNetworkImage = false,
    this.imageHeight,
    this.spacing,
    required this.imageWidth,
    this.assetImagefit,
    this.assetsImageRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: spacing?.h ?? 16.h,
        crossAxisSpacing: spacing?.w ?? 20.w,
        childAspectRatio:
            1.12.r, // Adjust the ratio for height relative to width
      ),
      itemCount: photoPaths.length,
      itemBuilder: (context, index) {
        return AboutUsPhotoGridItemSection(
          imageWidth: imageWidth,
          imagePath: photoPaths[index],
          isNetworkImage: isNetworkImage,
          imageHeight: imageHeight,
          assetImagefit: assetImagefit,
          assetsImageRadius: assetsImageRadius,
        );
      },
      physics:
          const NeverScrollableScrollPhysics(), // Disable scrolling in GridView
      shrinkWrap: true, // Fit the grid within the scrollable area
    );
  }
}
