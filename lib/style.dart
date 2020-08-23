import 'package:flutter/material.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const String FontNameDefault = 'Montserrat';

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  // because we have defined weight = 300 in pubspec.yaml
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.white,
);
