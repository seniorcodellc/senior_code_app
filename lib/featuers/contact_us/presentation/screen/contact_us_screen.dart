import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/contact_us_body_section.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: const ContactUsBodySection(),
          ),
        ),
      ),
    );
  }
}
