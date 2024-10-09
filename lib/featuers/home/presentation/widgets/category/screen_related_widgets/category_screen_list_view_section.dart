import '../../../../../../config/routes/app_routes.dart';
import '../../../../../../core/utils/app_styels.dart';
import '../../../../../../exports.dart';
import '../../protfolio_widgets_and_sections_widgets_and_category_screen/home_protfolio_and_sections_list_view_item_card.dart';

class CategoryListViewSection extends StatelessWidget {
  final int categoryListViewItemCount;
  final Color? cardColor;

  const CategoryListViewSection({
    super.key,
    required this.categoryListViewItemCount,
    this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        categoryListViewItemCount,
        (index) {
          return PortfolioAndSectionsAndCategoryListViewItemCard(
            cardOnTap: () {
              Navigator.pushNamed(
                context,
                Routes.categoryDetailsRoute,
              );
            },
            cardLeftPadding: 0,
            projectImageHeight: 119,
            projectImageWidth: 129,
            locationIconColor: AppColors.white,
            titleStyle: AppStyles.getSemiBoldStyle(
              color: AppColors.white,
              fontSize: 20,
            ),
            projectLocationStyle: AppStyles.getMediumStyle(
              color: AppColors.white,
              fontSize: 13,
            ),
            elevation: 0,
            cardColor: cardColor,
            spaceBetweenDuartionAndLocation: 0,
            spaceBetweenCategoryTitleAndProjectDurationWithLocation: 0,
            spaceBetweenIconAndLocation: 2.5,
            title: 'Fatto Application',
            projectLocation: 'Egypt',
            projectImagePath: AppAssets.fattoImage,
            imageRightPadding: 22,
          );
        },
      ),
    );
  }
}
