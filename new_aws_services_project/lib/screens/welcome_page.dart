import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:new_aws_sercices/widgets/back_button.dart';
import 'package:new_aws_sercices/widgets/consts.dart';
import 'package:new_aws_sercices/widgets/styles.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:new_aws_sercices/navigation/app_routes.dart' as routes;

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _amplifyInstance = Amplify;

  // func config amplify add it to init

  Future<void> _configureAmplify() async {
    try {
      AmplifyAuthCognito auth = AmplifyAuthCognito();
      _amplifyInstance.addPlugin(auth);
      await _amplifyInstance.configure('amplifyconfig');
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final wScreen = MediaQuery.of(context).size.width;
    final hScreen = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.transparent
                ])),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: hScreen * 0.25),
              Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: wScreen * 0.10,
                  ),
                  child: const Text(
                    welcomeTitle,
                    style: h2,
                  )),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: wScreen * 0.14, vertical: hScreen * 0.04),
                child: const Text(
                  welcomeSubTitle,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              const Spacer(),
              SizedBox(
                  width: wScreen * 0.8,
                  height: hScreen * 0.055,
                  child: loginButton0(
                      const Icon(
                        Icons.mail_outline,
                        color: white,
                      ),
                      "Login with mail",
                      highlightColor, () {
                    goToNavigator(context, routes.loginPage);
                  }, context)),
              SizedBox(height: hScreen * 0.02),
              SizedBox(
                  width: wScreen * 0.8,
                  height: hScreen * 0.055,
                  child: loginButton0(
                      const Icon(
                        Icons.person_outline,
                        color: white,
                      ),
                      "Sign up",
                      primaryColor, () {
                    goToNavigator(context, routes.signUp);
                  }, context)),
              SizedBox(height: hScreen * 0.02),
              SizedBox(
                  width: wScreen * 0.8,
                  height: hScreen * 0.055,
                  child: loginButton0(
                      const Icon(
                        Icons.face_outlined,
                        color: white,
                      ),
                      "Login with facebook",
                      Colors.blue, () {
                    goToNavigator(context, 'tabs');
                  }, context)),
              SizedBox(height: hScreen * 0.09),
            ],
          )
        ],
      )),
    );
  }
}
