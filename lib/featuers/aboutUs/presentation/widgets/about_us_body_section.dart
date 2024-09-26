import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'about_us_images_section.dart';
import 'about_us_bar_and_icon_section.dart';
import 'about_us_text_section.dart';

class AboutUsBodySection extends StatelessWidget {
  const AboutUsBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        40.vs,
        Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 20.2.w,
          ),
          child: const AboutUsBarAndIconSection(),
        ),
        30.vs,
        const AboutUsTextSection(),
        43.vs,
        const AbouUsImagesSection(),
        27.vs,
      ],
    );
  }
}
