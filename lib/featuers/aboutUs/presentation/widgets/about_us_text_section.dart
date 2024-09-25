import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class AboutUsTextSection extends StatelessWidget {
  const AboutUsTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        "Senior Code is more than just a software development company; we're your trusted partner committed to delivering reliable, high-quality software solutions tailored to your needs.",
        style: AppStyles.getBoldStyle(
          color: AppColors.white,
        ),
      ),
    );
  }
}
