import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/track_project_screen_body_section.dart';

class TrackProjectScreen extends StatelessWidget {
  const TrackProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: const TrackProjectScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
