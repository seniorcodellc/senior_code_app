import 'package:senior_code_app/core/extensions.dart';

import '../../../../../../exports.dart';
import '../../protfolio_widgets_and_sections_widgets_and_category_screen/home_protfolio_and_sections_list_view_item_card.dart';

class PortfolioListViewSection extends StatelessWidget {
  //! Section List View With Buttons
  const PortfolioListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 3; // Number of list items

    return Padding(
      padding: EdgeInsets.only(right: 3.w),
      child: Column(
        children: List.generate(
          itemCount,
          (index) {
            return PortfolioAndSectionsAndCategoryListViewItemCard(
              title: 'Khedmty',
              categoryTitle: 'Mobile App',
              projectDuration: '3 Weeks',
              projectLocation: 'Saudi Arabia',
              projectImagePath: AppAssets.khedmtyTestPortfolio,
              firstButtonText: "UI Design",
              secondButtonText: 'Admin Panel',
              onFirstButtonTap: () {},
              onSecondButtonTap: () {},
              spaceBetweenCategoryTitleAndProjectDurationWithLocation: 30,
              spaceBetweenDuartionAndLocation: 20,
            );
          },
        ),
      ),
    );
  }
}
