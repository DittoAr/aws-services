import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:new_aws_sercices/navigation/app_routes.dart' as routes;
import 'package:flutter/material.dart';
import 'package:new_aws_sercices/screens/sign_up_page.dart';

class EmailConfirmationScreen extends StatelessWidget {
  final String email;

  EmailConfirmationScreen({
    Key? key,
    required this.email,
  }) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController _confirmationCodeController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Confirm your email"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              Text(
                "An email confirmation code is sent to $email. Please type the code to confirm your email.",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _confirmationCodeController,
                decoration:
                    const InputDecoration(labelText: "Confirmation Code"),
                validator: (value) => value!.length != 6
                    ? "The confirmation code is invalid"
                    : null,
              ),
              TextButton(
                onPressed: () => _submitCode(context),
                child: const Text("CONFIRM"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _submitCode(BuildContext context) async {
    final confirmationCode = _confirmationCodeController.text;
    try {
      final SignUpResult response = await Amplify.Auth.confirmSignUp(
        username: email,
        confirmationCode: confirmationCode,
      );
      if (response.isSignUpComplete) {
        _gotoMainScreen(context);
      }
    } catch (e) {
      snackbarDitto(context, e.toString());
    }
  }

  void _gotoMainScreen(BuildContext context) {
    Navigator.pushNamed(context, routes.mainScreen);
  }
}
