import 'package:flutter/material.dart';
import 'package:new_aws_sercices/widgets/consts.dart';

Widget backButton(Color color, context) {
  //final wScreen = MediaQuery.of(context).size.width;
  final hScreen = MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(top: hScreen * 0.04),
    child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: color,
          size: 35.0,
        )),
  );
}

void showAlert(
  context,
  String image,
  String title,
  String subTitle,
  String labelButton,
) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        final wScreen = MediaQuery.of(context).size.width;
        final hScreen = MediaQuery.of(context).size.height;
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          content: SizedBox(
            height: hScreen * 0.38,
            child: Column(children: [
              Image.asset(
                image,
                height: hScreen * 0.1,
              ),
              Container(
                  margin: EdgeInsets.only(top: hScreen * 0.05),
                  child: headersTitles3(title, darkText, context)),
              Container(
                margin: EdgeInsets.only(top: hScreen * 0.01),
                child: Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: disabledColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: hScreen * 0.05),
                  width: wScreen * 0.8,
                  height: hScreen * 0.05,
                  child: loginButton0(
                      const Icon(
                        Icons.done,
                        color: white,
                      ),
                      'done',
                      primaryColor, () {
                    Navigator.pushReplacementNamed(context, 'login');
                  }, context)),
            ]),
          ),
        );
      });
}

void showAlertLocation(
  context,
  String image,
  String title,
  String subTitle,
  String labelButton,
  String labelButton2,
) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        final wScreen = MediaQuery.of(context).size.width;
        final hScreen = MediaQuery.of(context).size.height;
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          content: Column(children: [
            Image.asset(
              image,
              height: hScreen * 0.1,
            ),
            Container(
                margin: EdgeInsets.only(top: hScreen * 0.05),
                child: headersTitles3(title, darkText, context)),
            Container(
              margin: EdgeInsets.only(top: hScreen * 0.02),
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: disabledColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: hScreen * 0.05),
                  width: wScreen * 0.3,
                  height: hScreen * 0.04,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor)),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, 'login');
                      Navigator.pop(context);
                    },
                    child: Text(
                      labelButton,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: hScreen * 0.05),
                  width: wScreen * 0.3,
                  height: hScreen * 0.04,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor)),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, 'login');
                      Navigator.pop(context);
                    },
                    child: Text(
                      labelButton2,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        );
      });
}

goToNavigator(context, String link) {
  Navigator.pushNamed(context, link == '' ? 'login' : link);
}
