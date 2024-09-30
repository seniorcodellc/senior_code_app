import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'edit_profile_app_bar_section.dart';
import 'edit_profile_form_section.dart';

class EditProfileScreenBodySection extends StatelessWidget {
  const EditProfileScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        42.vs,
        const EditProfileAppBarSection(),
        39.vs,
        const EditProfileFormSection(),
      ],
    );
  }
}
