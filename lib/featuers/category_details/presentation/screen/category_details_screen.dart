

import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import '../widgets/category_details_screen_body_section.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0.w,
            ),
            child: const CategoryDetailsScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
