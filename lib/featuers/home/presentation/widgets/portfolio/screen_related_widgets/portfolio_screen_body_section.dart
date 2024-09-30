import 'package:senior_code_app/core/extensions.dart';

import '../../../../../../exports.dart';
import '../../home_and_related_screens_custom_app_bar.dart';
import '../home_related_widgets/home_portfolio_list_view_section.dart';

class PortfolioScreenBodySection extends StatelessWidget {
  const PortfolioScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        28.vs,
        const HomeAndRelatedScreensCustomAppBar(
          homeCustomAppBarTextData: 'Portfolio',
        ),
        46.vs,
        const PortfolioListViewSection(),
      ],
    );
  }
}
