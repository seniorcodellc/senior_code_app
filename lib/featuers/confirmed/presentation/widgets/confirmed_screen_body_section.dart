import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'confirmed_screen_button_section.dart';
import 'confirmed_screen_image_section.dart';
import 'confirmed_screens_texts_section.dart';

class ConfirmedScreenBodySection extends StatelessWidget {
  const ConfirmedScreenBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        124.vs,
        const ConfirmedScreenImageSection(),
        56.vs,
        const ConfirmedScreensTextsSection(),
        115.66.vs,
        const ConfirmedScreenButtonSection(),
        50.vs,
      ],
    );
  }
}
