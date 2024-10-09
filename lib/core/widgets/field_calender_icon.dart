import 'package:senior_code_app/core/extensions.dart';

import '../../exports.dart';

class FieldCalenderIcon extends StatelessWidget {
  final double? calenderIconSize;
  final Color? calenderIconColor;
  const FieldCalenderIcon({
    super.key,
    this.calenderIconSize,
    this.calenderIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.calendar_today_outlined,
      color: calenderIconColor ?? AppColors.white,
      size: calenderIconSize ?? 24.r,
    );
  }
}
