import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyles extends StatelessWidget {

  final String input;


 const MyTextStyles(this.input, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      input,
      style: GoogleFonts.poppins(
        fontSize: 22,
      ),

    );
  }
}
