import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/app_strings.dart';
import 'package:taskora/core/router/routers_name.dart';
import 'package:taskora/core/theme/light_theme.dart';

import 'features/pages/home_screen/home_screen.dart';
import 'features/splash_onboarding/presentation/pages/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        locale: Locale('ar'),
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: LightTheme.lightTheme,
        initialRoute: RoutersName.projectsScreen,
        routes: {
          RoutersName.onboardingScreen: (context) => OnboardingScreen(),
          RoutersName.projectsScreen: (context) => HomeScreen(),
        },
      ),
    );
  }
}
