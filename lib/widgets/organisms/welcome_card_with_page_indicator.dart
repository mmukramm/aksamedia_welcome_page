import 'package:flutter/material.dart';

import 'package:aksamedia_welcome_page/models/welcome_item.dart';
import 'package:aksamedia_welcome_page/widgets/molecules/welcome_card.dart';
import 'package:aksamedia_welcome_page/widgets/molecules/welcome_page_indicator.dart';

class WelcomeCardWithPageIndicator extends StatelessWidget {
  final int selectedPage;
  final WelcomeItem welcomeItem;
  final VoidCallback onClickButton;
  const WelcomeCardWithPageIndicator({
    super.key,
    required this.selectedPage,
    required this.welcomeItem,
    required this.onClickButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        WelcomePageIndicator(
          selectedPage: selectedPage,
        ),
        const SizedBox(height: 12),
        WelcomeCard(
          title: welcomeItem.title,
          description: welcomeItem.description,
          onClickButton: onClickButton,
        )
      ],
    );
  }
}
