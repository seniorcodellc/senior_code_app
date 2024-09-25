import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';

class ConfirmedScreenImageSection extends StatelessWidget {
  const ConfirmedScreenImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.doneImage,
      height: 297.h,
      width: double.maxFinite,
    );
  }
}
