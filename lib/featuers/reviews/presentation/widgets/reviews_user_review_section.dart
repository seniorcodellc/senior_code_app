import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import 'reviews_interactive_bar_indicator.dart';
import 'reviews_user_image.dart';
import 'reviews_user_name.dart';
import 'reviews_user_review.dart';

class ReviewsUserReviewSection extends StatelessWidget {
  const ReviewsUserReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ReviewsUserImage(),
        19.hs,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           const ReviewsUserName(),
              10.vs,
           const ReviewsInteractiveBarIndicator(),
              10.vs,
              const ReviewsUserReview(),
            ],
          ),
        ),
      ],
    );
  }
}
