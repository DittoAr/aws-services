import 'package:flutter/material.dart';
import 'package:new_aws_sercices/widgets/consts.dart';

/////////////////////////////////
///   TEXT STYLES
////////////////////////////////

const logoStyle = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 33,
    color: Colors.black87,
    letterSpacing: 2);

const logoWhiteStyle = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 25,
    letterSpacing: 2,
    color: Colors.white);
const logoWhiteStyle2 = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 45,
    letterSpacing: 2,
    color: Colors.white);

const logoWhiteStylePetit = TextStyle(
    fontFamily: 'Pacifico',
    shadows: [Shadow(color: darkText, offset: Offset(1, 1))],
    fontSize: 21,
    letterSpacing: 2,
    color: Colors.white);
const logoWhiteStylePetitGris = TextStyle(
    fontFamily: 'Pacifico', fontSize: 21, letterSpacing: 2, color: Colors.grey);
const whiteText = TextStyle(color: Colors.white, fontFamily: 'Poppins');
const whiteText2 =
    TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 12);
const disabledText = TextStyle(color: Colors.grey, fontFamily: 'Poppins');
const disabledText2 =
    TextStyle(color: Colors.black54, fontFamily: 'Poppins', fontSize: 16);
const disabledText3 =
    TextStyle(color: Colors.grey, fontFamily: 'Poppins', fontSize: 12);
const contrastText = TextStyle(color: primaryColor, fontFamily: 'Poppins');
const contrastTextBold = TextStyle(
    color: primaryColor, fontFamily: 'Poppins', fontWeight: FontWeight.w600);

const h2 = TextStyle(
    color: Colors.white70,
    fontSize: 40,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');

const h3 = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w800,
    fontFamily: 'Poppins');
const h3W = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');

const h4 = TextStyle(
    color: Colors.white,
    letterSpacing: 1,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');

const h5 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');
const h5W = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');

const h5W2 = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');

const h6 = TextStyle(
    color: primaryColor,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');
const h6B = TextStyle(
    color: Colors.black87,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');
const h6W = TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');
const h6WD = TextStyle(
    color: Colors.white54,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');
const h6GB = TextStyle(
    color: Colors.black54,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins');

const priceText = TextStyle(
    color: Color(0xFFFF5050),
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const priceTextP = TextStyle(
    color: Color(0xFFFF5050),
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');

const foodNameText = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');
const foodName2Text = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins');

const tabLinkStyle = TextStyle(fontWeight: FontWeight.w500);

const taglineText = TextStyle(color: Colors.grey, fontFamily: 'Poppins');
const categoryText = TextStyle(
    color: Color(0xff444444),
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins');

const inputFieldTextStyle =
    TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500);

const inputFieldHintTextStyle =
    TextStyle(fontFamily: 'Poppins', color: Color(0xFF888888));

const inputFieldPasswordTextStyle = TextStyle(
    fontFamily: 'Poppins', fontWeight: FontWeight.w500, letterSpacing: 3);

const inputFieldHintPaswordTextStyle = TextStyle(
    fontFamily: 'Poppins', color: Color(0xFF7D7D7D), letterSpacing: 2);

///////////////////////////////////
/// BOX DECORATION STYLES
//////////////////////////////////

const authPlateDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(0, 0, 0, .1),
          blurRadius: 10,
          spreadRadius: 5,
          offset: Offset(0, 1))
    ],
    borderRadius: BorderRadiusDirectional.only(
        bottomEnd: Radius.circular(20), bottomStart: Radius.circular(20)));

/////////////////////////////////////
/// INPUT FIELD DECORATION STYLES
////////////////////////////////////

const inputFieldFocusedBorderStyle = UnderlineInputBorder(
    //borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(
  color: primaryColor,
));

const inputFieldDefaultBorderStyle =
    UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(6)));
