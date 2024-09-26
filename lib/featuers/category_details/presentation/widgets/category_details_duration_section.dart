

import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class CategoryDetailsDurationSection extends StatelessWidget {
  const CategoryDetailsDurationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Duration:",
          style: AppStyles.getSemiBoldStyle(
            fontSize: 13,
            color: AppColors.white,
          ),
        ),
        9.hs,
        Text(
          "3 Weeks",
          style: AppStyles.getMediumStyle(
            fontSize: 11,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
