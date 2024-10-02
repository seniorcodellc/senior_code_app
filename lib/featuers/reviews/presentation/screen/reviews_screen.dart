import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/reviews_screen_body_section.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: const ReviewsScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
