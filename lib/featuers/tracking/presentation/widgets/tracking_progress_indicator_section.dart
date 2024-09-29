import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';
import '../../data/stepper_data.dart';

class TrackingProgressIndicatorSection extends StatelessWidget {
  final Color progressColor;
  final StepperData step;
  const TrackingProgressIndicatorSection({
    super.key,
    required this.step,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 62.w,
          height: 62.h,
          child: CircularProgressIndicator(
            value: step.percentage / 100,
            strokeWidth: 6.w,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(progressColor),
          ),
        ),
        Center(
          child: Text(
            "${step.percentage.toInt()}%",
            style: AppStyles.getSemiBoldStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
