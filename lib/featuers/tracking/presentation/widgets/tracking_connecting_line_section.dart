import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';

class TrackingConnectingLine extends StatelessWidget {
  final Color progressColor;

  const TrackingConnectingLine({super.key, required this.progressColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w, // Line thickness
      height: 80.h,
      color: progressColor.withOpacity(0.8),
    );
  }
}
