import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ContactUsCallAndEmailItemTitleSection extends StatelessWidget {
    final String contatTitle;

  const ContactUsCallAndEmailItemTitleSection({super.key, required this.contatTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      contatTitle,
      style: AppStyles.getMediumStyle(
        color: AppColors.primaryColor,
        fontSize: 18,
        fontFamily: FontFamilies.poppinsFamily,
      ),
    );
  }
}
