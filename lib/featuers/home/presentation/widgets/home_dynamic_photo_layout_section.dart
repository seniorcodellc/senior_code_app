import 'package:flutter/material.dart';
import 'about_us_photo_grid_item_section.dart';
import 'package:senior_code_app/core/extensions.dart';

class HomeDynamicPhotoLayoutSection extends StatelessWidget {
  final List<String> photoPaths;
  final bool isNetworkImage;
  final double? imageHeight;
  final double? imageWidth;
  final BoxFit? assetImagefit;
  final double? assetsImageRadius;
  final int? crossAxisCount;
  final double? mainAxisSpacing;
  final double? crossAxisSpacing;

  const HomeDynamicPhotoLayoutSection({
    super.key,
    required this.photoPaths,
    this.isNetworkImage = false,
    this.imageHeight,
    required this.imageWidth,
    this.assetImagefit,
    this.assetsImageRadius,
    this.crossAxisCount,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount ?? 2,
        mainAxisSpacing: mainAxisSpacing?.h ?? 16.0.h,
        crossAxisSpacing: crossAxisSpacing?.w ?? 20.0.w,
        childAspectRatio: ((imageWidth ?? 1) / (imageHeight ?? 1)).r,
      ),
      itemCount: photoPaths.length,
      itemBuilder: (context, index) {
        return HomePhotoGridItemSection(
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
