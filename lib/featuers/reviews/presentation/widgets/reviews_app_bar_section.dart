import '../../../../exports.dart';
import '../../../home/presentation/widgets/home_and_related_screens_custom_app_bar.dart';

class ReviewsAppBarSection extends StatelessWidget {
  const ReviewsAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeAndRelatedScreensCustomAppBar(
      homeCustomAppBarTextData: "Reviews",
      homeCustomAppBarHorizontalPadding: 0,
    );
  }
}
