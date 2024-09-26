import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'category_details_app_bar_section.dart';
import 'category_details_buttons_section.dart';
import 'category_details_duration_section.dart';
import 'category_details_location_section.dart';
import 'category_details_photos_section.dart';
import 'category_details_project_link_section.dart';
import 'category_details_question_text_section.dart';

class CategoryDetailsScreenBodySection extends StatelessWidget {
  const CategoryDetailsScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        42.vs,
        const CategoryDetailsAppBarSection(),
        50.vs,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.5.w),
          child: const CategoryDetailsProjectLink(),
        ),
        38.vs,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.5.w),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryDetailsDurationSection(),
              CategoryDetailsLocationSection(),
            ],
          ),
        ),
        64.vs,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.5.w),
          child: const CategoryDetailsPhotosSection(),
        ),
        58.vs,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w),
          child: const CategoryDetailsQuestionTextSection(),
        ),
        78.6.vs,
        const CategoryDetailsButtonsSection(),
        71.vs,
      ],
    );
  }
}
