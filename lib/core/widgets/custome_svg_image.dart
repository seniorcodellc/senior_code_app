// ignore_for_file: deprecated_member_use

import 'package:senior_code_app/core/extensions.dart';

import '../../exports.dart';

class CustomSVGImage extends StatelessWidget {
  const CustomSVGImage({
    super.key,
    required this.asset,
    this.matchTextDirection = true,
    this.color,
    this.fit = BoxFit.contain,
    this.onTap,
    this.width,
    this.height,
  });
  final double? width;
  final double? height;
  final String asset;
  final void Function()? onTap;
  final Color? color;
  final BoxFit fit;
  final bool matchTextDirection;

  @override
  Widget build(BuildContext context) {
    if (asset.contains("http")) {
      return SvgPicture.network(
        asset,
        fit: BoxFit.fill,
        matchTextDirection: matchTextDirection,
        color: color,
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        width: width?.w ?? 0,
        height: height?.h ?? 0,
        asset,
        color: color,
        fit: fit,
        matchTextDirection: matchTextDirection,
      ),
    );
  }
}
