import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/tracking_screen_body_section.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080532),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: const TrackingScreenBody(),
          ),
        ),
      ),
    );
  }
}
