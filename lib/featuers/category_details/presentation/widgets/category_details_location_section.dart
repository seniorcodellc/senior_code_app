import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';
import '../../../home/presentation/widgets/home_location_icons_and_location_text.dart';

class CategoryDetailsLocationSection extends StatelessWidget {
  const CategoryDetailsLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Country:",
          style: AppStyles.getSemiBoldStyle(
            fontSize: 13,
            color: AppColors.white,
          ),
        ),
        13.hs,
        HomeLocationIconAndLocationText(
          locationIconHight: 20,
          locationIconWidth: 20,
          projectLocation: "Saudi Arabia",
          locationIconColor: AppColors.white,
          projectLocationStyle: AppStyles.getMediumStyle(
            fontSize: 11,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
