import 'package:senior_code_app/core/extensions.dart';

import '../../../../../core/utils/app_styels.dart';
import '../../../../../exports.dart';
import '../home_location_icons_and_location_text.dart';

class HomeProtfolioAndSectionsAndCategoryListViewCardDurationAndLocationTexts
    extends StatelessWidget {
  final String projectDuration;
  final TextStyle? projectDurationStyle;
  final double? spaceBetweenDuartionAndLocation;
  final String projectLocation;
  final TextStyle? projectLocationStyle;
  final Color? locationIconColor;

  const HomeProtfolioAndSectionsAndCategoryListViewCardDurationAndLocationTexts({
    super.key,
    required this.projectDuration,
    this.projectDurationStyle,
    this.spaceBetweenDuartionAndLocation,
    required this.projectLocation,
    this.projectLocationStyle,
    this.locationIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          projectDuration, // Dynamic duration
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: projectDurationStyle ??
              AppStyles.getMediumStyle(
                fontSize: 13,
                color: AppColors.black,
              ), // Customizable duration style
        ),
        spaceBetweenDuartionAndLocation?.hs ?? 20.hs,
        HomeLocationIconAndLocationText(
          projectLocation: projectLocation,
          locationIconColor: locationIconColor,
          projectLocationStyle: projectLocationStyle,
        ),
      ],
    );
  }
}
