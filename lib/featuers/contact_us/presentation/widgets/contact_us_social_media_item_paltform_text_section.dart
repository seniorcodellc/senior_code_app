import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ContactUsSocialMediaItemPaltformTextSection extends StatelessWidget {
    final String socialPlatformName;

  const ContactUsSocialMediaItemPaltformTextSection({super.key, required this.socialPlatformName});

  @override
  Widget build(BuildContext context) {
    return Text(
      socialPlatformName,
      style: AppStyles.getRegularStyle(
        color: AppColors.white,
        fontSize: 16,
        fontFamily: FontFamilies.poppinsFamily,
      ),
    );
  }
}
