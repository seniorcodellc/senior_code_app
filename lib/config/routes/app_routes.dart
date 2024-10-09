import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/featuers/auth/managers/auth_cubit/auth_cubit.dart';

import '../../core/enums.dart';
import '../../exports.dart';

import '../../featuers/auth/resetPassword/presentation/screens/reset_password_otp_screen.dart';
import '../../featuers/auth/signin/presentation/screens/signin_screen.dart';
import '../../service_locator.dart';
import 'routes_exports.dart';

class Routes {
  Routes._internal();

  static const String aboutUsRoute = "AboutUsScreen";
  static const String bottomNavigationBar = "BottomNavigationBar";
  static const String confirmedRoute = "ConfirmedScreen";
  static const String onBoardingRoute = "OnBoardingScreen";
  static const String resetPasswordRoute = "ResetPasswordScreen";
  static const String sectionsRoute = "SectionScreen";
  static const String signinRoute = "SigninScreen";
  static const String signupRoute = "SignupScreen";
  static const String verificationRoute = "VerificationScreen";
  static const String contactUsRoute = "ContactUsScreen";
  static const String categoryRoute = "CategoryScreen";
  static const String categoryDetailsRoute = "CategoryDetailsScreen";
  static const String portfolioRoute = "PortfolioScreen";
  static const String trackProjectRoute = "TrackProjectScreen";
  static const String trackingRoute = "TrackingScreen";
  static const String myAccountRoute = "MyAccountScreen";
  static const String editProfileRoute = "EditProfileScreen";
  static const String changePasswordRoute = "ChangePasswordScreen";
  static const String termsAndConditionsRoute = "TermsAndConditionsScreen";
  static const String resetPasswordPhoneNumberRoute =
      "ResetPasswordPhoneNumberScreen";
  static const String resetPasswordOtpRoute = "ResetPasswordOtpScreen";
}

// class RouteGenerator {
//   RouteGenerator._internal();

//   static Route<T>? getRoute<T>(RouteSettings routeSettings) {
//     debugPrint(routeSettings.name);
//     switch (routeSettings.name) {
//       //! Auth Routes
//       case Routes.signinRoute:
//         return MaterialPageRoute(
//           builder: (context) => BlocProvider(
//             create: (context) => ServiceLocator().getIt<AuthCubit>(),
//             child: const SigninScreen(),
//           ),
//         );
//       case Routes.signupRoute:
//         return MaterialPageRoute(
//           builder: (context) => const SignupScreen(),
//         );
//       case Routes.verificationRoute:
//         return MaterialPageRoute(
//           builder: (context) => const VerificationScreen(),
//         );
//       case Routes.resetPasswordRoute:
//         return MaterialPageRoute(
//           builder: (context) => const ResetPasswordScreen(),
//         );
//       case Routes.resetPasswordPhoneNumberRoute:
//         return MaterialPageRoute(
//           builder: (context) => const ResetPasswordWithNumberScreen(),
//         );
//       case Routes.resetPasswordOtpRoute:
//         return MaterialPageRoute(
//           builder: (context) => const ResetPasswordOtpScreen(),
//         );
//       //! Home Routes
//       case Routes.bottomNavigationBar:
//         return MaterialPageRoute(
//           builder: (context) => const CustomBottomNavigationBar(),
//         );
//       //! Home Related Routes
//       case Routes.sectionsRoute:
//         return MaterialPageRoute(
//           builder: (context) => const SectionsScreen(),
//         );
//       case Routes.confirmedRoute:
//         return MaterialPageRoute(
//           builder: (context) => const ConfirmedScreen(),
//         );
//       case Routes.aboutUsRoute:
//         return MaterialPageRoute(
//           builder: (context) => const AboutUsScreen(),
//         );
//       case Routes.contactUsRoute:
//         return MaterialPageRoute(
//           builder: (context) => const ContactUsScreen(),
//         );
//       case Routes.categoryRoute:
//         return MaterialPageRoute(
//           builder: (context) => const CategoryScreen(),
//         );
//       case Routes.categoryDetailsRoute:
//         return MaterialPageRoute(
//           builder: (context) => const CategoryDetailsScreen(),
//         );
//       case Routes.portfolioRoute:
//         return MaterialPageRoute(
//           builder: (context) => const PortfolioScreen(),
//         );
//       case Routes.trackProjectRoute:
//         return MaterialPageRoute(
//           builder: (context) => const TrackProjectScreen(),
//         );
//       case Routes.trackingRoute:
//         return MaterialPageRoute(
//           builder: (context) => const TrackingScreen(),
//         );
//       // ! profile routes
//       case Routes.myAccountRoute:
//         return MaterialPageRoute(
//           builder: (context) => const MyAccountScreen(),
//         );
//       // ! Profile Related Routes
//       case Routes.editProfileRoute:
//         return MaterialPageRoute(
//           builder: (context) => const EditProfileScreen(),
//         );
//       case Routes.changePasswordRoute:
//         return MaterialPageRoute(
//           builder: (context) => const ChangePasswordScreen(),
//         );
//       case Routes.termsAndConditionsRoute:
//         return MaterialPageRoute(
//           builder: (context) => const TermsAndConditionsScreen(),
//         );
//       // Default:
//       default:
//         //! TODO: In release mode, return `null`. In development or debug mode, comment out `null` and  use `MaterialPageRoute` to enhance the user experience (UX).
//         // return null;
//         return MaterialPageRoute(
//           builder: (context) => Scaffold(
//             body: Center(
//               child: Text(
//                 "No route defined for ${routeSettings.name}",
//               ),
//             ),
//           ),
//         );
//     }
//   }
// }

class RouteGenerator {
  RouteGenerator._internal();
  AnimationType? pageRouteAnimationGlobal;
  static Duration pageRouteTransitionDurationGlobal = 400.milliseconds;
  static Route<T>? getRoute<T>(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      //! Auth Routes
      case Routes.signinRoute:
        return buildPageRoute(
          child: BlocProvider(
            create: (context) => ServiceLocator().getIt<AuthCubit>(),
            child: const SigninScreen(),
          ),
        );
      case Routes.signupRoute:
        return buildPageRoute(
          child: BlocProvider(
            create: (context) => ServiceLocator().getIt<AuthCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.verificationRoute:
        return buildPageRoute(
          child: const VerificationScreen(),
        );
      case Routes.resetPasswordRoute:
        return buildPageRoute(
          child: const ResetPasswordScreen(),
        );
      case Routes.resetPasswordPhoneNumberRoute:
        return buildPageRoute(
          child: const ResetPasswordWithNumberScreen(),
        );
      case Routes.resetPasswordOtpRoute:
        return buildPageRoute(
          child: const ResetPasswordOtpScreen(),
        );
      //! Home Routes
      case Routes.bottomNavigationBar:
        return buildPageRoute(
          child: const CustomBottomNavigationBar(),
        );
      //! Home Related Routes
      case Routes.sectionsRoute:
        return buildPageRoute(
          child: const SectionsScreen(),
        );
      case Routes.confirmedRoute:
        return buildPageRoute(
          child: const ConfirmedScreen(),
        );
      case Routes.aboutUsRoute:
        return buildPageRoute(
          child: const AboutUsScreen(),
        );
      case Routes.contactUsRoute:
        return buildPageRoute(
          child: const ContactUsScreen(),
        );
      case Routes.categoryRoute:
        return buildPageRoute(
          child: const CategoryScreen(),
        );
      case Routes.categoryDetailsRoute:
        return buildPageRoute(
          child: const CategoryDetailsScreen(),
        );
      case Routes.portfolioRoute:
        return buildPageRoute(
          child: const PortfolioScreen(),
        );
      case Routes.trackProjectRoute:
        return buildPageRoute(
          child: const TrackProjectScreen(),
        );
      case Routes.trackingRoute:
        return buildPageRoute(
          child: const TrackingScreen(),
        );
      // ! profile routes
      case Routes.myAccountRoute:
        return buildPageRoute(
          child: const MyAccountScreen(),
        );
      // ! Profile Related Routes
      case Routes.editProfileRoute:
        return buildPageRoute(
          child: const EditProfileScreen(),
        );
      case Routes.changePasswordRoute:
        return buildPageRoute(
          child: const ChangePasswordScreen(),
        );
      case Routes.termsAndConditionsRoute:
        return buildPageRoute(
          child: const TermsAndConditionsScreen(),
        );
    }
    //! TODO: In release mode, return `null`. In development or debug mode, comment out `null` and  use `MaterialPageRoute` to enhance the user experience (UX).
    return buildPageRoute<T>(
      child: const Center(
        child: Text("no route found"),
      ),
      routeSettings: routeSettings,
    );
  }

  static Route<T> buildPageRoute<T>({
    required Widget child,
    AnimationType? pageRouteAnimation = AnimationType.fade,
    Duration? duration,
    RouteSettings? routeSettings,
  }) {
    if (pageRouteAnimation == AnimationType.rotate) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return RotationTransition(
              turns: ReverseAnimation(anim), child: child);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.scale) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return ScaleTransition(scale: anim, child: child);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.slide) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.slideBottomTop) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(0.0, 1.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    }

    return PageRouteBuilder<T>(
      settings: routeSettings,
      transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      reverseTransitionDuration: const Duration(milliseconds: 50),
      pageBuilder: (context, a1, a2) => child,
      transitionsBuilder: (c, anim, a2, child) {
        return FadeTransition(opacity: anim, child: child);
      },
    );
  }
}
