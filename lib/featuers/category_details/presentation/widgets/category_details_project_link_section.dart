

import 'package:senior_code_app/core/extensions.dart';

import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class CategoryDetailsProjectLink extends StatelessWidget {
  const CategoryDetailsProjectLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Project Link",
          style: AppStyles.getSemiBoldStyle(
            fontSize: 13,
            color: AppColors.white,
          ),
        ),
        18.hs,
        Expanded(
          child: Text(
            "https://www.figma.com/design/prJ3pkKanIhlFEf4MqLBug/Fatto-App?node-id=0-1&t=tjGSlzrPYueJs6a0-1",
            style: AppStyles.getSemiBoldStyle(
              color: AppColors.white,
            ),
            //! If needed ...
            // overflow: TextOverflow.ellipsis,
            // maxLines: 1,
          ),
        )
      ],
    );
  }
}
