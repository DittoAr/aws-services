import 'package:flutter/material.dart';

const Color bgColor = Color(0xffF4F7FA);
const Color primaryColor = Color(0xFFFF3C3C);
const Color disabledColor = Color(0xFF838383);
const Color primaryColor2 = Color(0xFFFF5D5D);
const Color secondaryColor = Color(0xFFFAE258);
const Color white = Colors.white;
const Color darkText = Colors.black87;
const Color titleColorB = Colors.black54;
const Color titleColorW = Colors.white70;
const Color highlightColor = Colors.green;

////--------------------------styles-------------------------

TextStyle dissabledStyle1() {
  return const TextStyle(
      color: disabledColor, fontSize: 13.0, fontWeight: FontWeight.w600);
}

////--------------------------title widget

Widget titlePages(String title, Color color, context) {
  final hScreen = MediaQuery.of(context).size.height;
  return Center(
    child: Text(
      title,
      style: TextStyle(
          //letterSpacing: 1,
          color: color,
          fontSize: hScreen * 0.036,
          fontWeight: FontWeight.w800),
    ),
  );
}

Widget headersTitles(String title, Color color, context) {
  final hScreen = MediaQuery.of(context).size.height;
  return Center(
    child: Text(
      title,
      style: TextStyle(
          //letterSpacing: 1,
          color: color,
          fontSize: hScreen * 0.025,
          fontWeight: FontWeight.w800),
    ),
  );
}

Widget headersTitles2(String title, Color color, context) {
  // final hScreen = MediaQuery.of(context).size.height;
  return Center(
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: darkText,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget headersTitles3(String title, Color color, context) {
  final hScreen = MediaQuery.of(context).size.height;
  return Center(
    child: Text(
      title,
      style: TextStyle(
          //letterSpacing: 1,
          color: color,
          fontSize: hScreen * 0.021,
          fontWeight: FontWeight.w800),
    ),
  );
}

//--------------------------login button widget
Widget loginButton(
  String texte,
  Color color,
  ontap,
  context,
) {
  return Container(
    decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(40))),
    child: TextButton(
      onPressed: ontap,
      child: Text(
        texte,
        style: const TextStyle(color: white),
      ),
    ),
  );
}

Widget loginButton0(
  Icon icon,
  String texte,
  Color color,
  ontap,
  context,
) {
  final wScreen = MediaQuery.of(context).size.width;
  final hScreen = MediaQuery.of(context).size.height;
  return InkWell(
    onTap: ontap,
    child: Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(14.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            width: wScreen * 0.02,
          ),
          Text(
            texte,
            style: const TextStyle(color: white),
          ),
        ],
      ),
    ),
  );
}

//--------------Name App-----------------------
const String nomApp = 'Chez ta soeur';

//--------------AdMod Account--------------------

const String adMobUserAccount = "xxxxxxxxxxx";
const String adMobAdId = "ad id ici";

//--------------welcomePage-----------------------

const String welcomeTitle = "aws Services \n auth cn cognito de Amazon";
const String welcomeSubTitle =
    'Set exact location to find the right restaurant near to you';

//--------------loginPage-----------------------

const String loginTitle = 'Welcome Back';
const String loginSubTitle = 'login to your account';
const String forgorPassword = 'Forgot password?';
const String dontHaveAnAccount = 'Don\'t have an account?';
const String signUp = 'Sign up.';

//--------------Forgot password Page-----------------------
const String forgotPasswordTitle = 'Forgot Password';
const String forgotPasswordSubTitle =
    'Please enter your email adress You will receive a link to create a new password';
const String forgotSendButton = 'Send';

//--------------Explore Tab Page-----------------------

const String ExploreTitleTab = 'Discover new places';
