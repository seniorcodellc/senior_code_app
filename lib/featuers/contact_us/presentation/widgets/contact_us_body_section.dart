import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'contact_us_app_bar_section.dart';
import 'contact_us_call_and_email_section.dart';
import 'contact_us_social_media_section.dart';
import 'contact_us_social_media_text_section.dart';
import 'contact_us_welcome_text_section.dart';

class ContactUsBodySection extends StatelessWidget {
  const ContactUsBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        50.vs,
        const ContactUsAppBarSection(),
        22.vs,
        const ContactUsWelcomeTextSection(),
        41.vs,
        const ContactUsCallAndEmailSection(),
        52.vs,
        const ContactUsSocialMediaTextSection(),
        8.vs,
        const ContactUsSocialMediaSection(),
        71.vs,
      ],
    );
  }
}
