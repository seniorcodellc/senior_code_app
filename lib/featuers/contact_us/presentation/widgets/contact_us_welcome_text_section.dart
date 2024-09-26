import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ContactUsWelcomeTextSection extends StatelessWidget {
  const ContactUsWelcomeTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'We welcome your feedback! Please reach out with suggestions for improvement, complaints, or issues. Your input helps us serve you better.',
      style: AppStyles.getMediumStyle(
        fontSize: 16,
        color: AppColors.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}
