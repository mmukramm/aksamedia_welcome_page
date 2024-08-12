import 'package:aksamedia_welcome_page/core/themes/theme.dart';
import 'package:aksamedia_welcome_page/pages/welcome_page.dart';
import 'package:flutter/material.dart';

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
