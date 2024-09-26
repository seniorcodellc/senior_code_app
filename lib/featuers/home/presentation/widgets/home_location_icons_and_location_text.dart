import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/custome_svg_image.dart';
import '../../../../exports.dart';

class HomeLocationIconAndLocationText extends StatelessWidget {
  final String projectLocation;
  final TextStyle? projectLocationStyle;
  final Color? locationIconColor;
  final double? locationIconHight;
  final double? locationIconWidth;
  const HomeLocationIconAndLocationText(
      {super.key,
      required this.projectLocation,
      this.projectLocationStyle,
      this.locationIconColor,
      this.locationIconHight,
      this.locationIconWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSVGImage(
          asset: AppAssets.locationIcon,
          height: locationIconHight?.h ?? 24.h,
          width: locationIconWidth?.w ?? 24.w,
          color: locationIconColor,
        ),
        4.hs,
        Text(
          projectLocation, // Dynamic location
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: projectLocationStyle ??
              AppStyles.getMediumStyle(
                fontSize: 13,
                color: AppColors.black,
              ), // Customizable location style
        ),
      ],
    );
  }
}
