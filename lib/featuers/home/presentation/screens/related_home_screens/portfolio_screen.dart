import 'package:senior_code_app/core/extensions.dart';

import '../../../../../exports.dart';
import '../../widgets/portfolio/screen_related_widgets/portfolio_screen_body_section.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.5.w),
          child: const PortfolioScreenBodySection(),
        ),
      )),
    );
  }
}
