import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/category/screen_related_widgets/category_screen_body_section.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child:const CategoryScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
