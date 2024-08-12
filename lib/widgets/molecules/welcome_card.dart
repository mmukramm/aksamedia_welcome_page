import 'package:aksamedia_welcome_page/core/helpers/app_size.dart';
import 'package:aksamedia_welcome_page/widgets/atoms/custom_body.dart';
import 'package:aksamedia_welcome_page/widgets/atoms/custom_button.dart';
import 'package:aksamedia_welcome_page/widgets/atoms/custom_header.dart';
import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onClickButton;
  const WelcomeCard({
    super.key,
    required this.title,
    required this.description,
    required this.onClickButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      height: AppSize.getDeviceHeight(context) * .35,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomHeader(title: title),
              const SizedBox(height: 12),
              CustomBody(description: description),
            ],
          ),
          CustomButton(
            text: "Selanjutnya",
            onClick: onClickButton,
          )
        ],
      ),
    );
  }
}
