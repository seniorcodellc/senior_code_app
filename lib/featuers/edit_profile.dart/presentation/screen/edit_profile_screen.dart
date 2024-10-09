import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import '../widgets/edit_profile_screen_body_section.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const EditProfileScreenBodySection(),
          ),
        ),
      ),
    );
  }
}
