import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey/config/theme.dart';
import 'package:todoey/screens/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          textTheme: GoogleFonts.nunitoTextTheme(),
          outlinedButtonTheme: buttons),
      title: 'Todoey',
      debugShowCheckedModeBanner: false,
      home: const Onboard(),
    );
  }
}
