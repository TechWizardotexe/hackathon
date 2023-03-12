// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:papatruecaller/utils/colors.dart';

var textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.textborderColor,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(50), // set the radius here
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.textborderColor,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(50), // set the radius here
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.textborderColor,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(50), // set the radius here
  ),
);

void nextScreen(context, page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

void showSnackBar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "ok",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ),
  );
}
