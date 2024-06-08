import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCTAButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  CustomCTAButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.shade800,
        shadowColor: Colors.blue.shade900,
        elevation: 2.5,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
      child: Text(
        text,
        style: GoogleFonts.arsenal(            
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
        )
      )
    );
  }
}