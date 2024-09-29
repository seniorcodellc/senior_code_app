import '../../../../exports.dart';
import '../../data/stepper_data.dart';
import 'tracking_stepeer_widget_section.dart';

class TrackingStepperWidgetDataPassingSection extends StatelessWidget {
  const TrackingStepperWidgetDataPassingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TrackingStepperWidgetSection(
      steps: [
        StepperData(percentage: 100, label: "UI Design"),
        StepperData(percentage: 75, label: "Front-end"),
        StepperData(percentage: 50, label: "Back-end"),
        StepperData(percentage: 25, label: "Development"),
      ],
    );
  }
}
