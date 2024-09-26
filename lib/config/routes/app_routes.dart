import 'package:senior_code_app/featuers/contact_us/presentation/screen/contact_us_screen.dart';

import '../../exports.dart';
import '../../featuers/aboutUs/presentation/screen/about_us_screen.dart';
import '../../featuers/home/presentation/screens/category_screen.dart';
import 'routes_exports.dart';

class Routes {
  Routes._internal();

  static const String aboutUsRoute = "AboutUsScreen";
  static const String bottomNavigationBar = "BottomNavigationBar";
  static const String confirmedRoute = "ConfirmedScreen";
  static const String homeRoute = "HomeScreen";
  static const String onBoardingRoute = "OnBoardingScreen";
  static const String resetPasswordRoute = "ResetPasswordScreen";
  static const String sectionsRoute = "SectionScreen";
  static const String signinRoute = "SigninScreen";
  static const String signupRoute = "SignupScreen";
  static const String verificationRoute = "VerificationScreen";
  static const String contactUsRoute = "ContactUsScreen";
  static const String categoryRoute = "categoryScreen";
}

class RouteGenerator {
  RouteGenerator._internal();

  static Route<T>? getRoute<T>(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      //! Auth Routes
      case Routes.signinRoute:
        return MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        );
      case Routes.signupRoute:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        );
      case Routes.verificationRoute:
        return MaterialPageRoute(
          builder: (context) => const VerificationScreen(),
        );
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordScreen(),
        );
      //! Home Routes
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.bottomNavigationBar:
        return MaterialPageRoute(
          builder: (context) => const CustomBottomNavigationBar(),
        );
      //! Home Related Routes
      case Routes.sectionsRoute:
        return MaterialPageRoute(
          builder: (context) => const SectionsScreen(),
        );
      case Routes.confirmedRoute:
        return MaterialPageRoute(
          builder: (context) => const ConfirmedScreen(),
        );
      case Routes.aboutUsRoute:
        return MaterialPageRoute(
          builder: (context) => const AboutUsScreen(),
        );
      case Routes.contactUsRoute:
        return MaterialPageRoute(
          builder: (context) => const ContactUsScreen(),
        );
      case Routes.categoryRoute:
        return MaterialPageRoute(
          builder: (context) => const CategoryScreen(),
        );
      // Default:
      default:
        //! TODO: In release mode, return `null`. In development or debug mode, comment out `null` and  use `MaterialPageRoute` to enhance the user experience (UX).
        // return null;
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                "No route defined for ${routeSettings.name}",
              ),
            ),
          ),
        );
    }
  }
}
