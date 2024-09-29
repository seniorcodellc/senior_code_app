import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../../../../exports.dart';

class TrackProjectEnterProjectNumberFormSection extends StatelessWidget {
  const TrackProjectEnterProjectNumberFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Please enter your Project number",
          style: AppStyles.getRegularStyle(
            fontSize: 12.0,
            color: AppColors.white,
            fontFamily: FontFamilies.poppinsFamily,
          ),
        ),
        11.vs,
        AppTextFormField(
          hintText: "Enter Project Number",
          hintStyle: AppStyles.getRegularStyle(
            color: AppColors.dustyTaupeColor,
            fontSize: 12,
          ),
          radius: 11,
        ),
      ],
    );
  }
}
