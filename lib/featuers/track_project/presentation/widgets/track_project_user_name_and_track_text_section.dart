import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class TrackProjectUserNameAndTrackTextSection extends StatelessWidget {
  const TrackProjectUserNameAndTrackTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hello Muhammed,",
          style: AppStyles.getRegularStyle(
            fontSize: 12,
            color: AppColors.white,
            fontFamily: FontFamilies.poppinsFamily,
          ),
        ),
        2.vs,
        Text(
          "Track your Project",
          style: AppStyles.getSemiBoldStyle(
            fontSize: 17.0,
            color: AppColors.white,
            fontFamily: FontFamilies.poppinsFamily,
          ),
        ),
      ],
    );
  }
}
