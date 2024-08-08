import 'package:flutter/material.dart';

const rose = Color(0XFFFF3B7A);
final buttons = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    fixedSize: const Size(300, 50),
    textStyle: const TextStyle(fontWeight: FontWeight.bold),
    backgroundColor: rose,
    foregroundColor: Colors.white,
    shadowColor: rose,
    elevation: 5,
    side: BorderSide.none,
    shape: RoundedRectangleBorder(
      side: BorderSide.none,
      borderRadius: BorderRadius.circular(15),
    ),
  ),
);
