

import '../../../home/presentation/widgets/home_and_related_screens_custom_app_bar.dart';
import '../../../../exports.dart';

class CategoryDetailsAppBarSection extends StatelessWidget {
  const CategoryDetailsAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAndRelatedScreensCustomAppBar(
      homeCustomAppBarHorizontalPadding: 20,
      homeCustomAppBarTextData: "Fatto Application",
    );
  }
}
