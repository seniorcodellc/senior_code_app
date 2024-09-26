import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ContactUsSocialMediaTextSection extends StatelessWidget {
  const ContactUsSocialMediaTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        "Contact us in Social Media",
        style: AppStyles.getMediumStyle(
          color: AppColors.white,
          fontSize: 12,
          fontFamily: FontFamilies.poppinsFamily,
        ),
      ),
    );
  }
}
