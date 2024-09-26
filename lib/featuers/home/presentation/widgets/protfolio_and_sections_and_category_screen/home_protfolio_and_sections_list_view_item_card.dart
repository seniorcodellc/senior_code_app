import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/exports.dart';

import 'home_protfolio_and_sections_list_view_card_body.dart';

class PortfolioAndSectionsAndCategoryListViewItemCard extends StatelessWidget {
  final String title;
  final String? categoryTitle;
  final String? projectDuration;
  final String projectLocation;
  final String projectImagePath;
  final VoidCallback? onFirstButtonTap;
  final VoidCallback? onSecondButtonTap;
  final String? firstButtonText;
  final String? secondButtonText;
  final double? elevation;

  // Sizes and padding
  final double? projectImageWidth;
  final double? projectImageHeight;

  // Styles
  final TextStyle? titleStyle;
  final TextStyle? categoryTitleStyle;
  final TextStyle? projectDurationStyle;
  final TextStyle? projectLocationStyle;

  // Button visibility
  final bool? showFirstButton;
  final bool? showSecondButton;
  // Padding
  final double? imageRightPadding;
  // Spaces
  final double? spaceBetweenCategoryTitleAndProjectDurationWithLocation;
  final double? spaceBetweenDuartionAndLocation;
  final double? spaceBetweenIconAndLocation;
  final double? spaceBeforeButtonsFromTop;
  final double? spaceBetweenButtons;
  final Color? cardColor;
  final Color? locationIconColor;
  final double? cardLeftPadding;
  final double? cardBottomPadding;
  final double? cardTopPadding;
    final void Function()? cardOnTap;


  const PortfolioAndSectionsAndCategoryListViewItemCard({
    super.key,
    required this.title,
    this.categoryTitle,
    this.projectDuration,
    required this.projectLocation,
    required this.projectImagePath,
    this.onFirstButtonTap,
    this.onSecondButtonTap,
    this.firstButtonText,
    this.secondButtonText,
    this.projectImageWidth,
    this.projectImageHeight,
    this.titleStyle,
    this.categoryTitleStyle,
    this.projectDurationStyle,
    this.projectLocationStyle,
    this.showFirstButton = true, // First button visibility (default is true)
    this.showSecondButton = true, // Second button visibility (default is true)
    this.imageRightPadding,
    this.spaceBetweenCategoryTitleAndProjectDurationWithLocation,
    this.spaceBetweenDuartionAndLocation,
    this.spaceBetweenIconAndLocation,
    this.spaceBeforeButtonsFromTop,
    this.spaceBetweenButtons,
    this.elevation,
    this.cardColor,
    this.locationIconColor,
    this.cardLeftPadding,
    this.cardBottomPadding,
    this.cardTopPadding, this.cardOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 12.h,), // Flexible padding Between cards
      child: Card(
        elevation: elevation ?? 4,
        color: cardColor ?? AppColors.white,
        child: Padding(
          padding: EdgeInsets.only(
            left: cardLeftPadding?.w ?? 14.w,
            top: cardTopPadding?.h ?? 12.h,
            bottom: cardBottomPadding?.h ?? 12.h,
          ),
          child: ProtfolioAndSectionsAndCategoryListViewCardBody(
            cardOnTap: cardOnTap,
            locationIconColor: locationIconColor,
            projectImageHeight: projectImageHeight,
            projectImageWidth: projectImageWidth,
            titleStyle: titleStyle,
            projectLocationStyle: projectLocationStyle,
            title: title,
            categoryTitle: categoryTitle ?? "",
            projectDuration: projectDuration ?? "",
            projectLocation: projectLocation,
            projectImagePath: projectImagePath,
            firstButtonText: firstButtonText,
            secondButtonText: secondButtonText,
            onFirstButtonTap: onFirstButtonTap,
            onSecondButtonTap: onSecondButtonTap,
            showFirstButton: showFirstButton ?? false,
            showSecondButton: showSecondButton ?? false,
            imageRightPadding: imageRightPadding,
            spaceBetweenCategoryTitleAndProjectDurationWithLocationWithLocation:
                spaceBetweenCategoryTitleAndProjectDurationWithLocation,
            spaceBetweenDuartionAndLocation: spaceBetweenDuartionAndLocation,
          ),
        ),
      ),
    );
  }
}
