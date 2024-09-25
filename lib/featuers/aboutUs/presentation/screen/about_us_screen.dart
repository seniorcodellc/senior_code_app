import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/about_us_body_section.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.5.w),
            child: const AboutUsBodySection(),
          ),
        ),
      ),
    );
  }
}
