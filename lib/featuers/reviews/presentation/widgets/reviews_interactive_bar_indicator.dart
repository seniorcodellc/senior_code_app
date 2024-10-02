import 'package:flutter/foundation.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import 'custom_interactive_rating_bar_section.dart';

class ReviewsInteractiveBarIndicator extends StatelessWidget {
  const ReviewsInteractiveBarIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveRatingBar(
      initialRating: 3,
      minRating: 1,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 30.0.r,
      onRatingUpdate: (rating) {
        if (kDebugMode) {
          print("Rating is: $rating");
        }
      },
    );
  }
}
