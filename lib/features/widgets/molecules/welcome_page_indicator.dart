import 'package:flutter/material.dart';

import 'package:aksamedia_welcome_page/features/widgets/atoms/single_indicator.dart';

class WelcomePageIndicator extends StatelessWidget {
  final int selectedPage;
  const WelcomePageIndicator({
    super.key,
    required this.selectedPage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        3,
        (index) => SingleIndicator(width: getIndicatorWidth(index)),
      ),
    );
  }

  double getIndicatorWidth(int index) {
    return selectedPage == index ? 32 : 8;
  }
}
