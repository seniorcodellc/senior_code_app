import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import 'tracking_app_bar_section.dart';
import 'tracking_back_to_home_button_section.dart';
import 'tracking_project_details_card_section.dart';
import 'tracking_stepper_widget_data_passing_section.dart';

class TrackingScreenBody extends StatelessWidget {
  const TrackingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        14.vs,
        const TrackingAppBarSection(),
        64.4.vs,
        const TrackingProjectDetailsCardSection(),
        53.13.vs,
        const TrackingStepperWidgetDataPassingSection(),
        70.vs,
        const TrackingBackToHomeButtonSection(),
        29.vs,
      ],
    );
  }
}
