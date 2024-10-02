import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';

class NonInteractiveRatingBarIndicator extends StatelessWidget {
  const NonInteractiveRatingBarIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 4.5,
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: AppColors.amber,
      ),
      itemCount: 5,
      itemSize: 30.0.r,
      direction: Axis.horizontal,
      unratedColor: AppColors.grey.withOpacity(0.5),
    );
  }
}
