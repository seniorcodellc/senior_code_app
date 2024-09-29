import 'package:senior_code_app/core/extensions.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../exports.dart';

class TrackProjectButton extends StatelessWidget {
  const TrackProjectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 13.w),
      child: AppTextButton(
        backgroundColor: AppColors.steelBlue,
        buttonText: "Track Your Project",
        textStyle: AppStyles.getMediumStyle(
          color: AppColors.white,
          fontSize: 10,
        ),
        onPressed: () {
          Navigator.pushNamed(context, Routes.trackProjectRoute);
        },
        buttonWidth: 110,
        buttonHeight: 25,
        // borderRadius: 10,
      ),
    );
  }
}
