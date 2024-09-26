import '../../../../core/widgets/custome_svg_image.dart';
import '../../../../exports.dart';

class ContactUsCallAndEmailItemIconSection extends StatelessWidget {
  final String contactIconAsset;

  const ContactUsCallAndEmailItemIconSection(
      {super.key, required this.contactIconAsset});

  @override
  Widget build(BuildContext context) {
    return CustomSVGImage(
      asset: contactIconAsset,
      height: 50,
      width: 50,
    );
  }
}
