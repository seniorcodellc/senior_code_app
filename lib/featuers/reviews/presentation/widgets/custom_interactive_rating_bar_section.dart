import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';

class InteractiveRatingBar extends StatelessWidget {
  final double? initialRating;
  final double? minRating;
  final int? itemCount;
  final double? itemSize;
  final bool? allowHalfRating;
  final Axis? direction;
  final EdgeInsetsGeometry? itemPadding;
  final ValueChanged<double> onRatingUpdate;
  final Icon? fullIcon;
  final Icon? halfIcon;
  final Icon? emptyIcon;

  const InteractiveRatingBar({
    super.key,
    this.initialRating,
    this.minRating,
    this.itemCount,
    this.itemSize,
    this.allowHalfRating,
    this.direction,
    this.itemPadding,
    required this.onRatingUpdate,
    this.fullIcon,
    this.halfIcon,
    this.emptyIcon,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: initialRating ?? 0.0,
      minRating: minRating ?? 0.5,
      direction: direction ?? Axis.horizontal,
      allowHalfRating: allowHalfRating ?? false,
      itemCount: itemCount ?? 5,
      itemSize: itemSize ?? 30.r,
      ratingWidget: RatingWidget(
        full: fullIcon ?? const Icon(Icons.star, color: AppColors.amber),
        half: halfIcon ?? const Icon(Icons.star_half, color: AppColors.amber),
        empty:
            emptyIcon ?? const Icon(Icons.star_border, color: AppColors.amber),
      ),
      itemPadding: itemPadding ?? EdgeInsets.symmetric(horizontal: 4.0.w),
      onRatingUpdate: onRatingUpdate,
    );
  }
}


