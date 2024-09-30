import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'my_account_app_bar_section.dart';
import 'my_account_genral_list_tiles_and_text_section.dart';
import 'my_account_logout_button_section.dart';
import 'my_account_user_image_and_name_and_email_section.dart';

class MyAccountScreenBodySection extends StatelessWidget {
  const MyAccountScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        42.vs,
        const MyAccountAppBarSection(),
        58.8.vs,
        const MyAccountUserImageAndNameAndEmail(),
        24.vs,
        const MyAccountGenralListTilesAndText(),
        16.vs,
        const MyAccountLogoutButton(),
      ],
    );
  }
}
