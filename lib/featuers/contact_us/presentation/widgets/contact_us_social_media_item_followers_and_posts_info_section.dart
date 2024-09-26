import '../../../../core/utils/app_styels.dart';
import '../../../../exports.dart';

class ContactUsSocialMediaItemFollowersAndPostsInfoSection
    extends StatelessWidget {
  final String socialFollowersAndPostsInfo;

  const ContactUsSocialMediaItemFollowersAndPostsInfoSection(
      {super.key, required this.socialFollowersAndPostsInfo});

  @override
  Widget build(BuildContext context) {
    return Text(
      socialFollowersAndPostsInfo,
      style: AppStyles.getRegularStyle(
        color: AppColors.dimGray,
        fontSize: 14,
        fontFamily: FontFamilies.poppinsFamily,
      ),
    );
  }
}
