import 'package:flutter/material.dart';

import 'package:aksamedia_welcome_page/core/helpers/app_size.dart';
import 'package:aksamedia_welcome_page/core/helpers/asset_path.dart';

class PageViewImage extends StatelessWidget {
  final String imageName;
  const PageViewImage({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        child: Image.asset(
          AssetPath.getImage(imageName),
          fit: BoxFit.cover,
          width: AppSize.getDeviceWidth(context),
          height: AppSize.getDeviceHeight(context) * .75,
        ),
      ),
    );
  }
}
