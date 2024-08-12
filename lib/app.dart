import 'package:flutter/material.dart';

import 'package:aksamedia_welcome_page/core/themes/theme.dart';
import 'package:aksamedia_welcome_page/features/pages/welcome_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Page',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      home: const WelcomePage(),
    );
  }
}
