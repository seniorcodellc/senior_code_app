import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ContactUsCallAndEmailItemDescriptionSection extends StatelessWidget {
  final String contactDescription;
  final String contactTimeAndDate;
  const ContactUsCallAndEmailItemDescriptionSection({
    super.key,
    required this.contactDescription,
    required this.contactTimeAndDate,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: contactDescription,
            style: AppStyles.getRegularStyle(
              color: AppColors.dimGray,
              fontSize: 12,
              fontFamily: FontFamilies.poppinsFamily,
            ),
          ),
          TextSpan(
            text: contactTimeAndDate,
            style: AppStyles.getMediumStyle(
              color: AppColors.dimGray,
              fontSize: 12,
              fontFamily: FontFamilies.poppinsFamily,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
