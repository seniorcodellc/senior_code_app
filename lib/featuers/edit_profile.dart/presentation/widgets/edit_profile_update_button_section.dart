import '../../../../core/utils/app_styels.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../exports.dart';

class EditProfileUpdateButton extends StatelessWidget {
  const EditProfileUpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      backgroundColor: AppColors.steelBlue,
      buttonText: "Update",
      textStyle: AppStyles.getBoldStyle(
        color: AppColors.white,
        fontSize: 16,
        fontFamily: FontFamilies.interFamily,
      ),
      onPressed: () {},
      buttonHeight: 48,
      borderRadius: 10,
    );
  }
}
