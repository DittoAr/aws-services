import 'package:flutter/material.dart';
import 'package:new_aws_sercices/widgets/consts.dart';
import 'package:new_aws_sercices/widgets/styles.dart';

Widget userTextInput(String hintText,
    {onTap, onChanged, onEditingComplete, controller}) {
  return Container(
    margin: const EdgeInsets.only(top: 13),
    child: TextFormField(
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'User Name is required';
        }

        if (value.length < 5 || value.length > 12) {
          return 'nick must be betweem 5 and 20 characters';
        }

        return null;
      },
      controller: controller,
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      decoration: InputDecoration(
          icon: const Icon(Icons.person),
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}

Container emailInput(String hintText,
    {onTap, onChanged, onEditingComplete, controller}) {
  return Container(
    margin: const EdgeInsets.only(top: 13),
    child: TextFormField(
      controller: controller,
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      keyboardType: TextInputType.emailAddress,
      cursorColor: primaryColor,
      style: inputFieldTextStyle,
      decoration: InputDecoration(
          icon: const Icon(Icons.mail),
          hintText: hintText,
          hintStyle: inputFieldHintTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email address';
        }

        return null;
      },
    ),
  );
}

Container passwordInput(String hintText,
    {onTap, onChanged, onEditingComplete, controller}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextFormField(
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Password is required';
        }

        if (value.length < 5 || value.length > 20) {
          return 'Password must be betweem 5 and 20 characters';
        }

        return null;
      },
      controller: controller,
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      obscureText: true,
      cursorColor: primaryColor,
      style: inputFieldHintPaswordTextStyle,
      decoration: InputDecoration(
          icon: const Icon(Icons.lock_open),
          hintText: hintText,
          hintStyle: inputFieldHintPaswordTextStyle,
          focusedBorder: inputFieldFocusedBorderStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: inputFieldDefaultBorderStyle),
    ),
  );
}
