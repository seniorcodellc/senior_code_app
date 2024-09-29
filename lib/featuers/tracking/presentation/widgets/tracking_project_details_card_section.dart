import 'package:senior_code_app/core/extensions.dart';
import '../../../../exports.dart';
import 'tracking_project_details_card_body_section.dart';

class TrackingProjectDetailsCardSection extends StatelessWidget {
  const TrackingProjectDetailsCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 141.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFDEDFDF),
            Color(0xFF1E6B8B),
          ],
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: const TrackingProjectDetailsCardBodySection(),
    );
  }
}
