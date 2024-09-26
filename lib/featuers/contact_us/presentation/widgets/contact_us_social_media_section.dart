import '../../../../exports.dart';
import 'contact_us_social_media_item_section.dart';

class ContactUsSocialMediaSection extends StatelessWidget {
  const ContactUsSocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SocialMediaItemSection(
          socialIcon: AppAssets.facebookIcon,
          socialPlatformName: "Facebook",
          socialFollowersAndPostsInfo: "4.6K Followers • 118 Posts",
        ),
        SocialMediaItemSection(
          socialIcon: AppAssets.whatsappIcon,
          socialPlatformName: "WhatsApp",
          socialFollowersAndPostsInfo: "3.2K Followers • 75 Posts",
        ),
        SocialMediaItemSection(
          socialIcon: AppAssets.linkedinIcon,
          socialPlatformName: "LinkedIn",
          socialFollowersAndPostsInfo: "1.5K Connections • 30 Posts",
        ),
      ],
    );
  }
}
