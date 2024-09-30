import '../../../../exports.dart';
import '../../../home/presentation/widgets/home_and_related_screens_custom_app_bar.dart';

class EditProfileAppBarSection extends StatelessWidget {
  const EditProfileAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAndRelatedScreensCustomAppBar(
      homeCustomAppBarHorizontalPadding: 0,
      homeCustomAppBarTextData: "Edit Profile",
    );
  }
}
