import '../../../home/presentation/widgets/home_and_related_screens_custom_app_bar.dart';
import '../../../../exports.dart';

class MyAccountAppBarSection extends StatelessWidget {
  const MyAccountAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAndRelatedScreensCustomAppBar(
      homeCustomAppBarHorizontalPadding: 0,
      homeCustomAppBarTextData: "My Account",
    );
  }
}
