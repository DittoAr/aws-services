import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:new_aws_sercices/screens/confirm_email.dart';
import 'package:new_aws_sercices/widgets/consts.dart';
import 'package:new_aws_sercices/widgets/inputFields.dart';
import 'package:new_aws_sercices/widgets/styles.dart';
import 'package:new_aws_sercices/navigation/app_routes.dart' as routes;

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final wScreen = MediaQuery.of(context).size.width;
    final hScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: const BackButton(
      //     color: darkText,
      //   ),
      // ),
      body: SingleChildScrollView(
        //reverse: true,
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            Container(
              //margin: EdgeInsets.only(top: hScreen * 0.19),
              padding: const EdgeInsets.all(20),
              height: hScreen * 0.8,
              width: wScreen * 1.0,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.94),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: hScreen * 0.1,
                  ),
                  const Text(
                    'Create an account',
                    style: logoStyle,
                  ),
                  const Text(
                    'a choice you never asked about',
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
                  Container(
                      margin: EdgeInsets.only(top: hScreen * 0.02),
                      child: Column(
                        children: [
                          // userTextInput('User name'),
                          emailInput('Email adress',
                              controller: _emailController),
                          passwordInput('Password',
                              controller: _passwordController)
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: hScreen * 0.05),
                      width: wScreen * 0.9,
                      height: hScreen * 0.05,
                      child: loginButton0(
                          const Icon(
                            Icons.done,
                            color: white,
                          ),
                          'Create now',
                          primaryColor, () {
                        _createAccountOnPressed(context);
                      }, context)),
                  SizedBox(
                    height: hScreen * 0.02,
                  ),
                ],
              ),
            ),
            const SafeArea(
                child: BackButton(
              color: primaryColor,
            )),
          ],
        ),
      ),
    );
  }

  Future<void> _createAccountOnPressed(context) async {
    final email = _emailController.text;
    final password = _passwordController.text;
    try {
      var signupResult = await Amplify.Auth.signUp(
        username: email,
        password: password,
        // options: CognitoSignUpOptions(userAttributes: {'email': email}),
      );

      if (signupResult.isSignUpComplete) {
        _gotToEmailConfirmationScreen(context, email);
      }
    } catch (e) {
      snackbarDitto(context, e.toString());
    }
  }

  void _gotToEmailConfirmationScreen(BuildContext context, String email) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => EmailConfirmationScreen(
                  email: email,
                )));
  }
}

void snackbarDitto(context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.down,
      elevation: 1,
      padding: const EdgeInsets.all(10),
      content: Text(message, style: whiteText),
      // leading: Icon(IconConst.diamond),
      backgroundColor: primaryColor,
    ),
  );
}

// class TextFieldWidget extends StatelessWidget {
//   final String hintText;
//   final TextEditingController controller;
//   const TextFieldWidget({
//     Key? key,
//     required this.hintText,
//     required this.controller,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         icon: const Icon(
//           Icons.person,
//           color: disabledColor,
//         ),
//         focusedBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: primaryColor2, width: 0.4),
//         ),
//         enabledBorder: const UnderlineInputBorder(
//           borderSide: BorderSide(color: disabledColor, width: 0.4),
//         ),
//         hintText: hintText,
//       ),
//     );
//   }
// }
