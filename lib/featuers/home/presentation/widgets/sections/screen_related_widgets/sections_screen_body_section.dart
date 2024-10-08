import 'package:senior_code_app/core/extensions.dart';

import '../../../../../../exports.dart';
import '../../home_and_related_screens_custom_app_bar.dart';
import '../../home_general_list_view_section.dart';

class SectionsScreenBodySection extends StatelessWidget {
  const SectionsScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        28.vs,
        const HomeAndRelatedScreensCustomAppBar(
          homeCustomAppBarTextData: 'Sections',
        ),
        46.vs,
        const HomeGeneralListViewSection(
          sectionListViewItemCount: 7,
        ),
      ],
    );
  }
}
