import 'package:flutter/material.dart';
import 'package:flutter_demo/styles/color.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  foregroundColor: secondaryText, // ripple and image icon color
  surfaceTintColor: shadowColor, // one of ripple  // also by default tint color will you if you are not set surfaceTintColor when using elevation
  backgroundColor: buttonBackground, // button background color
  shadowColor: shadowColor,
  elevation: 0, // elevation // if you are using elevation don't forget to setup surface color
  minimumSize: Size(300,50),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0),
    side: BorderSide(color: buttonBorder),
  ),
);




