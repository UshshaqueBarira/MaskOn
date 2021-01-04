import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mask_on/Alert_screen.dart';
import 'package:mask_on/HomePage.dart';
import 'package:mask_on/image_alert.dart';
import 'package:mask_on/location.dart';
import 'package:mask_on/new_file.dart';
import 'package:mask_on/About Us.dart';
import 'SplashScreen.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.lightBlue[200], accentColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: new SplashScreen()
  )
  );
}
