import 'package:senior_code_app/core/extensions.dart';


import '../../../../exports.dart';
import '../widgets/my_account_screen_body_section.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const MyAccountScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
