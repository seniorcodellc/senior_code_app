import 'package:senior_code_app/core/extensions.dart';

import '../../exports.dart';

class CustomImageProviderFromAssets extends StatelessWidget {
  final String assetsImagePath;
  final double assetsImageHeight;
  final double? assetsImageWidth;
  final BoxFit? assetImagefit;
  final double? assetsImageRadius;
  const CustomImageProviderFromAssets({
    super.key,
    required this.assetsImagePath,
    required this.assetsImageHeight,
    this.assetsImageWidth,
    this.assetImagefit,
    this.assetsImageRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(assetsImageRadius?.r ?? 0),
      child: Image.asset(
        assetsImagePath,
        height: assetsImageHeight.h,
        width: assetsImageWidth?.w ?? double.maxFinite.w,
        fit: assetImagefit ?? BoxFit.cover,
      ),
    );
  }
}
