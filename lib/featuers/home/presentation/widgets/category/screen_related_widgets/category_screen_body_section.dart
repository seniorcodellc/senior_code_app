import 'package:senior_code_app/core/extensions.dart';

import '../../../../../../core/utils/app_styels.dart';
import '../../home_and_related_screens_custom_app_bar.dart';
import '../../../../../../exports.dart';
import 'category_screen_list_view_section.dart';

class CategoryScreenBodySection extends StatelessWidget {
  const CategoryScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        40.vs,
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 0.w,
          ),
          child: const HomeAndRelatedScreensCustomAppBar(
            homeCustomAppBarTextData: 'Category',
          ),
        ),
        50.vs,
        Text(
          "UI/UX Designs",
          style: AppStyles.getSemiBoldStyle(
            fontSize: 20,
            color: AppColors.white,
          ),
        ),
        50.vs,
        const CategoryListViewSection(
          cardColor: AppColors.primaryColor,
          categoryListViewItemCount: 7,
        ),
        40.vs,
      ],
    );
  }
}
