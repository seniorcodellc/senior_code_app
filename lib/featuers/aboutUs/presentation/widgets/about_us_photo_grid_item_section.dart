import 'package:flutter/material.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/widgets/custom_image_provider_from_assets.dart';

class AboutUsPhotoGridItemSection extends StatelessWidget {
  final String imagePath;
  final bool isNetworkImage;
  final double? imageWidth;
  final double? imageHeight;
  final BoxFit? assetImagefit;
  final double? assetsImageRadius;

  const AboutUsPhotoGridItemSection({
    super.key,
    required this.imagePath,
    this.isNetworkImage = false,
    this.imageWidth,
    this.imageHeight,
    this.assetImagefit,
    this.assetsImageRadius,
  });

  @override
  Widget build(BuildContext context) {
    return isNetworkImage
        ? Image.network(
            imagePath,
            height: imageHeight,
            width: imageWidth?.w ?? double.infinity.w,
            fit: BoxFit.cover,
          )
        : CustomImageProviderFromAssets(
            assetsImagePath: imagePath,
            assetsImageHeight: imageHeight!,
            assetImagefit: assetImagefit,
            assetsImageWidth: imageWidth,
            assetsImageRadius: assetsImageRadius,
          );
  }
}
