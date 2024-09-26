import '../../../../core/widgets/home_and_related_screens_custom_app_bar.dart';
import '../../../../exports.dart';

class ContactUsAppBarSection extends StatelessWidget {
  const ContactUsAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAndRelatedScreensCustomAppBar(
      homeCustomAppBarTextData: 'Contact Us',
      homeCustomAppBarHorizontalPadding: 10,
    );
  }
}
