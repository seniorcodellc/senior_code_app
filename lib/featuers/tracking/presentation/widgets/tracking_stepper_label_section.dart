import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';
import '../../data/stepper_data.dart';

class TrackingStepperLabelSection extends StatelessWidget {
  final StepperData step;

  const TrackingStepperLabelSection({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
        ),
        child: Text(
          step.label,
          style: AppStyles.getSemiBoldStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
