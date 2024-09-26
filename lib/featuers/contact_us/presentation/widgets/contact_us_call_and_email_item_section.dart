import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'contact_us_call_and_email_item_description_section.dart';
import 'contact_us_call_and_email_item_icon_section.dart';
import 'contact_us_call_and_email_item_title_section.dart';

class ContactUsCallAndEmailItemSection extends StatelessWidget {
  final String contatTitle;
  final String contactDescription;
  final String contactTimeAndDate;
  final String contactIconAsset;
  final VoidCallback onTap;

  const ContactUsCallAndEmailItemSection({
    super.key,
    required this.contatTitle,
    required this.contactDescription,
    required this.contactIconAsset,
    required this.onTap,
    required this.contactTimeAndDate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.r,
          ),
          color: AppColors.white,
        ),
        width: 148.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            14.vs,
            ContactUsCallAndEmailItemIconSection(
              contactIconAsset: contactIconAsset,
            ),
            15.vs,
            ContactUsCallAndEmailItemTitleSection(
              contatTitle: contatTitle,
            ),
            7.vs,
            ContactUsCallAndEmailItemDescriptionSection(
              contactDescription: contactDescription,
              contactTimeAndDate: contactTimeAndDate,
            ),
            13.vs,
          ],
        ),
      ),
    );
  }
}
