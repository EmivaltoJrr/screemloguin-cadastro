import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class imputText extends StatelessWidget {
  final String? placeholder;
  imputText({this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.inter(fontSize: 16, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 12,
        ),
        hintText: placeholder,
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}
