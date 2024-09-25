import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/confirmed_screen_body_section.dart';

class ConfirmedScreen extends StatelessWidget {
  const ConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.5.w),
            child: const ConfirmedScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
