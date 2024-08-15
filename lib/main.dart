import 'package:e__commerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.DarkTheme,
      theme: TAppTheme.lightTheme,
      home: const OnBoarding(),
    );
  }
}
