import 'package:senior_code_app/core/extensions.dart';

import '../../exports.dart';

class SeniorCodeIcon extends StatelessWidget {
  final double? seniorCodeIconHeight;
  final double? seniorCodeIconWidth;

  const SeniorCodeIcon(
      {super.key, this.seniorCodeIconHeight, this.seniorCodeIconWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: seniorCodeIconHeight?.h ?? 68.h,
      width: seniorCodeIconWidth?.w ?? 140.w,
      child: Image.asset(AppAssets.seniorCodeLogoImage),
    );
  }
}
