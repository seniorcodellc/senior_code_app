import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/widgets/senior_code_app_bar.dart';
import '../../../../core/widgets/senior_code_icon.dart';
import '../../../../exports.dart';

class AboutUsBarAndIconSection extends StatelessWidget {
  const AboutUsBarAndIconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: AlignmentDirectional.centerStart,
          child: SeniorCodeAppBarArrow(),
        ),
        17.vs,
        const SeniorCodeIcon(
          seniorCodeIconHeight: 153,
          seniorCodeIconWidth: 312,
        ),
      ],
    );
  }
}
