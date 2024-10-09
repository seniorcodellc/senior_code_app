import 'package:senior_code_app/config/routes/app_routes_helper.dart';
import 'package:senior_code_app/exports.dart';

import 'config/routes/app_routes.dart';
import 'featuers/onBoarding/presentation/screens/onboarding_screen.dart';

class SeniorCodeApp extends StatelessWidget {
  const SeniorCodeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Senior Code',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      onGenerateRoute: RouteGenerator.getRoute,
      navigatorKey: navigatorKey,
      home: const OnboardingScreen(),
    );
  }
}
