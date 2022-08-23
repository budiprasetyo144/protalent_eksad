import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/widget/expansion_ourservices2.dart';

class OurServices2 extends StatefulWidget {
  const OurServices2({Key? key}) : super(key: key);

  @override
  State<OurServices2> createState() => _OurServices2State();
}

class _OurServices2State extends State<OurServices2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 700,
      width: screenSize.width,
      child: Column(
        children: [
          Container(
            height: 130,
            color: const Color(0xff1e5ea8),
            width: screenSize.width,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Technologies Experties',
                  style: GoogleFonts.poppins(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.3),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Our Talent',
                  style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            color: Colors.white,
            width: screenSize.width * 0.6,
            child: ExpansionOurServices2(),
          )
        ],
      ),
    );
  }
}
