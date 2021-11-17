import 'package:flutter/material.dart';
import 'package:new_aws_sercices/screens/login_page.dart';
import 'package:new_aws_sercices/screens/main_screen.dart';
import 'package:new_aws_sercices/screens/sign_up_page.dart';
import 'package:new_aws_sercices/screens/welcome_page.dart';

const String loginPage = 'loginPage';
const String signUp = 'signUp';
const String confirmEmailPage = 'confirmEmailPage';
const String mainScreen = 'mainScreen';
const String home = 'home';

//------------------------------controller--------------------------------------

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {

//------------------------------------------------------------------------------

    case home:
      return MaterialPageRoute(builder: (context) => const WelcomePage());
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case signUp:
      return MaterialPageRoute(builder: (context) => const SingUp());
    case mainScreen:
      return MaterialPageRoute(builder: (context) => const MainScreen());

//------------------------------------------------------------------------------
    default:
      throw ('error');
  }
}
