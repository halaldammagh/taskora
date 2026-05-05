import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskora/core/config/constants/app_strings.dart';
import 'package:taskora/core/router/routers_name.dart';
import 'package:taskora/core/theme/light_theme.dart';
import 'package:taskora/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:taskora/features/pages/auth/presentation/login_screen/login_screen.dart';

import 'core/di/di.dart';
import 'features/onboarding/presentation/bloc/onboarding_event.dart';
import 'features/onboarding/presentation/pages/onboarding_screen.dart';
import 'features/pages/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          getIt<OnboardingBloc>()
            ..add(AppStartedEvent()),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
        locale: const Locale('ar'),
        supportedLocales: const [
          Locale('ar'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: LightTheme.lightTheme,
        initialRoute: RoutersName.onboardingScreen,
        routes: {
          RoutersName.onboardingScreen: (context) => const OnboardingScreen(),
          RoutersName.homeScreen: (context) => const HomeScreen(),
          RoutersName.loginScreen: (context) => const LoginScreen(),
        },
      ),
    );
  }
}