import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:new_aws_sercices/screens/sign_up_page.dart';
import 'package:new_aws_sercices/screens/welcome_page.dart';
import 'package:new_aws_sercices/widgets/back_button.dart';
import 'package:new_aws_sercices/widgets/consts.dart';
import 'package:new_aws_sercices/widgets/inputFields.dart';
import 'package:new_aws_sercices/widgets/shake_transition.dart';
import 'package:new_aws_sercices/widgets/styles.dart';
import 'package:new_aws_sercices/navigation/app_routes.dart' as routes;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final wScreen = MediaQuery.of(context).size.width;
    final hScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        reverse: true,
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            ShakeTransition(
              axis: Axis.vertical,
              offset: 100,
              duration: const Duration(milliseconds: 2000),
              child: Container(
                margin: EdgeInsets.only(top: hScreen * 0.31),
                padding: const EdgeInsets.all(20),
                height: hScreen * 0.68,
                width: wScreen * 1.0,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      loginTitle,
                      style: logoStyle,
                    ),
                    const Text(
                      loginSubTitle,
                      style: TextStyle(
                          color: disabledColor,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: hScreen * 0.02,
                    ),
                    Divider(
                      endIndent: wScreen * 0.07,
                      indent: wScreen * 0.07,
                      color: primaryColor,
                    ),
                    emailInput('email', controller: _emailController),
                    passwordInput("password", controller: _passwordController),
                    Container(
                        margin: EdgeInsets.only(top: hScreen * 0.01),
                        width: wScreen * 0.3,
                        height: hScreen * 0.05,
                        child: loginButton0(
                            const Icon(
                              Icons.person_outline,
                              color: white,
                            ),
                            'Login',
                            primaryColor, () {
                          _loginButtonOnPressed(context);
                        }, context)),
                    SizedBox(
                      height: hScreen * 0.04,
                    ),
                    TextButton(
                        onPressed: () {
                          goToNavigator(context, 'forgotPassword');
                        },
                        child: Text(forgorPassword, style: dissabledStyle1())),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(dontHaveAnAccount, style: dissabledStyle1()),
                        TextButton(
                            onPressed: () {},
                            child: const Text(signUp,
                                style: TextStyle(color: primaryColor2))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SafeArea(
                child: BackButton(
              color: white,
            )),
          ],
        ),
      ),
    );
  }

  Future<void> _loginButtonOnPressed(context) async {
    final user = _emailController.text;
    final password = _passwordController.text;

    try {
      //  var vari = Amplify.Auth.getCurrentUser().asStream();

      var signInResult =
          await Amplify.Auth.signIn(username: user, password: password);

      if (signInResult.isSignedIn) {
        _gotoMainScreen(context);
      }
    } on AuthException catch (e) {
      snackbarDitto(context, e.recoverySuggestion.toString());
    }
  }

  void _gotoMainScreen(BuildContext context) {
    Navigator.pushNamed(context, routes.mainScreen);
  }
}
