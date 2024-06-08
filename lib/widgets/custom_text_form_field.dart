import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator; // Optional validator

  CustomTextFormField({
    required this.hintText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),          
        ),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(
          fontSize: 20,
          fontFamily: GoogleFonts.arsenal().fontFamily,
          fontWeight: FontWeight.bold
        )
      ),
      style: TextStyle(
        fontSize: 20,
        fontFamily: GoogleFonts.arsenal().fontFamily,
        fontWeight: FontWeight.bold
      ),
      validator: validator
    );
  }
}
