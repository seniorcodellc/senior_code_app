import 'package:senior_code_app/core/extensions.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../exports.dart';
import 'home_text_dark_blue_stack_section.dart';
import 'category/home_related_widgets/home_category_list_view_section.dart';
import 'category/home_related_widgets/home_category_text_section.dart';
import 'protfolio_widgets_and_sections_widgets_and_category_screen/home_protfolio_and_sections_see_all_section.dart';
import 'home_top_name_and_about_us_bar.dart';
import 'portfolio/home_related_widgets/home_portfolio_list_view_section.dart';
import 'home_general_list_view_section.dart';
import 'statistics/statistics_grid_section.dart';

class HomeScreenBodySection extends StatelessWidget {
  const HomeScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTopNameAndAboutUsBar(),
        17.vs,
        const WomanAndTextBlueStack(),
        24.vs,
        const CategoryText(),
        40.vs,
        const CategoryListView(),
        58.vs,
        HomeSeeAll(
          seeAllOnTap: () {
            Navigator.pushNamed(context, Routes.portfolioRoute);
          },
          textData: 'Portfolio',
        ),
        20.vs,
        const PortfolioListViewSection(),
        73.vs,
        HomeSeeAll(
          seeAllOnTap: () {
            Navigator.pushNamed(context, Routes.sectionsRoute);
          },
          textData: 'Sections',
        ),
        8.vs,
        const HomeGeneralListViewSection(
          sectionListViewItemCount: 1,
        ),
        64.vs,
        const StatisticsGridSection(),
      ],
    );
  }
}
