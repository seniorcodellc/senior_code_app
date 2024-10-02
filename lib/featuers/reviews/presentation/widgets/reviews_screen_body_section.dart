import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import 'reviews_app_bar_section.dart';
import 'reviews_user_review_section.dart';

class ReviewsScreenBodySection extends StatelessWidget {
  const ReviewsScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        42.vs,
        const ReviewsAppBarSection(),
        50.25.vs,
        const ReviewsUserReviewSection(),
      ],
    );
  }
}
