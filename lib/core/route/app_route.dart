import 'package:flutter/material.dart';
import 'package:login_task_app/src/feature/splash_page.dart';

import '../../src/feature/home/home_page.dart';
import '../../src/feature/login/login_page.dart';
import '../../src/feature/otp/verify_otp_page.dart';

class AppRoute {
  static onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splash':
        return MaterialPageRoute(builder: (c) => const SplashPage());

      case 'login':
        return MaterialPageRoute(builder: (c) => LoginPage());
      case 'veryOtp':
        String number = settings.arguments as String;
        return MaterialPageRoute(builder: (c) => VerifyOtpPage(number: number));

      case 'homePage':
        return MaterialPageRoute(builder: (c) => const HomePage());

      default:
        return MaterialPageRoute(builder: (c) => const SplashPage());
    }
  }
}
