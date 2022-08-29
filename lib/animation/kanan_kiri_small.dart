import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Animasi_Kanan_Kiri_Small extends StatelessWidget {
  const Animasi_Kanan_Kiri_Small({Key? key, required this.judul}) : super(key: key);
  final String judul;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: const Duration(seconds: 1),
      curve: Curves.decelerate,
      direction: Direction.horizontal,
      child: Text(
        judul,
        style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.3,
            height: 1.4),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
