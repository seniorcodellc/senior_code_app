import '../../../../core/widgets/custome_svg_image.dart';
import '../../../../exports.dart';

class ContactUsSocialMediaItemIconSection extends StatelessWidget {
  final String socialIcon;
  final double? socialiconHeight;
  final double? socialiconWidth;

  const ContactUsSocialMediaItemIconSection(
      {super.key,
      required this.socialIcon,
      this.socialiconHeight,
      this.socialiconWidth});

  @override
  Widget build(BuildContext context) {
    return CustomSVGImage(
      asset: socialIcon,
      height: socialiconHeight ?? 31,
      width: socialiconWidth ?? 29,
    );
  }
}
