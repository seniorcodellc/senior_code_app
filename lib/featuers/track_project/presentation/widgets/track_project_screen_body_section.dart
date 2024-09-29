import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'track_project_app_bar_section.dart';
import 'track_project_enter_project_number_form_section.dart';
import 'track_project_image_and_button_section.dart';
import 'track_project_user_name_and_track_text_section.dart';

class TrackProjectScreenBodySection extends StatelessWidget {
  const TrackProjectScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        37.5.vs,
        const TrackProjectAppBarSection(),
        48.vs,
        const TrackProjectUserNameAndTrackTextSection(),
        27.vs,
        const TrackProjectEnterProjectNumberFormSection(),
        67.vs,
        const TrackProjectImageAndButtonSection(),
        64.vs,
      ],
    );
  }
}
