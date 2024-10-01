import '../../../../exports.dart';
import '../../../home/presentation/widgets/home_and_related_screens_custom_app_bar.dart';

class TermsAndConditionsAppBarSection extends StatelessWidget {
  const TermsAndConditionsAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAndRelatedScreensCustomAppBar(
      homeCustomAppBarTextData: "Terms and Conditions",
      homeCustomAppBarHorizontalPadding: 0,
    );
  }
}
