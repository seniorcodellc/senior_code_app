import 'package:senior_code_app/core/extensions.dart';

import '../../../../exports.dart';
import 'contact_us_social_media_item_followers_and_posts_info_section.dart';
import 'contact_us_social_media_item_icon_section.dart';
import 'contact_us_social_media_item_paltform_text_section.dart';

class SocialMediaItemSection extends StatelessWidget {
  final String socialIcon;
  final String socialPlatformName;
  final String socialFollowersAndPostsInfo;

  const SocialMediaItemSection({
    super.key,
    required this.socialIcon,
    required this.socialPlatformName,
    required this.socialFollowersAndPostsInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h), // Space between containers
      padding: EdgeInsetsDirectional.all(17.r),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.white,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactUsSocialMediaItemIconSection(
            socialIcon: socialIcon,
          ),
          18.hs,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactUsSocialMediaItemPaltformTextSection(
                socialPlatformName: socialPlatformName,
              ),
              10.vs,
              ContactUsSocialMediaItemFollowersAndPostsInfoSection(
                socialFollowersAndPostsInfo: socialFollowersAndPostsInfo,
              )
            ],
          ),
        ],
      ),
    );
  }
}
