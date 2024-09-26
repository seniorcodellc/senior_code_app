import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import 'contact_us_call_and_email_item_section.dart';

class ContactUsCallAndEmailSection extends StatelessWidget {
  const ContactUsCallAndEmailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContactUsCallAndEmailItemSection(
          contatTitle: 'Call Us',
          contactDescription: "Our team is on the line\n",
          contactIconAsset: AppAssets.phoneIcon,
          onTap: () {
            //! Implement call functionality here
          },
          contactTimeAndDate: 'Mon - Fri 9:00 - 17:00',
        ),
        13.hs,
        ContactUsCallAndEmailItemSection(
          contatTitle: 'Email Us',
          contactDescription: "Our team is online\n",
          contactIconAsset: AppAssets.emailIcon,
          onTap: () {
            //! Implement email functionality here
          },
          contactTimeAndDate: 'Mon - Fri 9:00 - 17:00',
        ),
      ],
    );
  }
}
