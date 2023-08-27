import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () => launchUrl(Uri.parse('https://www.linkedin.com/in/nikshit-chauhan'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(Uri.parse('https://github.com/nikshit-chauhan')),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/twitter.svg',
          onTap: () => launchUrl(Uri.parse('https://twitter.com/NikshitChauhan4')),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/leetcode.svg',
          onTap: () => launchUrl(Uri.parse('https://leetcode.com/nikshit_chauhan/')),
        ),
      ],
    );
  }
}
