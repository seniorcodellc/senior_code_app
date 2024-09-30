import '../../../../exports.dart';
import '../../../home/presentation/widgets/home_and_related_screens_custom_app_bar.dart';

class ChangePasswordAppBarSection extends StatelessWidget {
  const ChangePasswordAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAndRelatedScreensCustomAppBar(
      homeCustomAppBarTextData: "Change Password",
      homeCustomAppBarHorizontalPadding: 0,
    );
  }
}
