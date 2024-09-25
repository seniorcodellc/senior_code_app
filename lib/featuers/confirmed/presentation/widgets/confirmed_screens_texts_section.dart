import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ConfirmedScreensTextsSection extends StatelessWidget {
  const ConfirmedScreensTextsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Your reservation has been confirmed",
        style: AppStyles.getMediumStyle(
          fontSize: 27,
          color: AppColors.black,
        ),
        textAlign: TextAlign.center,
      ),
      26.vs,
      Text(
        "You’ve been booked by the software team! We’ll notify you with the details shortly.",
        textAlign: TextAlign.center,
        style: AppStyles.getMediumStyle(
          fontSize: 16,
          color: AppColors.steelBlue,
        ),
      ),
    ]);
  }
}
