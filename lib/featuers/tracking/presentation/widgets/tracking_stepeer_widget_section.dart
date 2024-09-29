import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../../data/stepper_data.dart';
import 'tracking_connecting_line_section.dart';
import 'tracking_progress_indicator_section.dart';
import 'tracking_stepper_label_section.dart';

class TrackingStepperWidgetSection extends StatelessWidget {
  const TrackingStepperWidgetSection({
    super.key,
    required this.steps,
    this.progressColor = AppColors.skyBlue,
  });

  final Color progressColor;
  final List<StepperData> steps;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...steps.asMap().entries.map((entry) {
          final index = entry.key;
          final step = entry.value;
          final isLast = index == steps.length - 1;

          return Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      // Progress indicator
                      TrackingProgressIndicatorSection(
                        step: step,
                        progressColor: progressColor,
                      ),
                      // Line connecting to the next progress indicator (if not the last one)
                      if (!isLast)
                        TrackingConnectingLine(
                          progressColor: progressColor,
                        ),
                    ],
                  ),
                  12.hs,
                  TrackingStepperLabelSection(
                    step: step,
                  ),
                ],
              ),
            ],
          );
        }),
      ],
    );
  }
}
