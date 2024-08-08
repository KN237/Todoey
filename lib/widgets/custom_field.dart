import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.hintText,
    this.maxlines = 1,
    this.icon,
    this.isGrey = false,
    this.isEnabled = true,
    super.key,
  });
  final TextEditingController controller;
  final String hintText;
  final int maxlines;
  final IconData? icon;
  final bool isGrey;
  final bool isEnabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.white,
        enabled: isEnabled,
        maxLines: maxlines,
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: Colors.white.withOpacity(0.4),
          ),
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: isGrey == true
                    ? Colors.white.withOpacity(0.5)
                    : Colors.white,
                width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: isGrey == true
                    ? Colors.white.withOpacity(0.5)
                    : Colors.white,
                width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: isGrey == true
                    ? Colors.white.withOpacity(0.5)
                    : Colors.white,
                width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle:
              TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),
        ),
      ),
    );
  }
}
