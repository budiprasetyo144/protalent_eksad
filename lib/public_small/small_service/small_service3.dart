import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/widget/expansion_ourservices2.dart';

class OurServiceSmall3 extends StatefulWidget {
  const OurServiceSmall3({Key? key}) : super(key: key);

  @override
  State<OurServiceSmall3> createState() => _OurServiceSmall3State();
}

class _OurServiceSmall3State extends State<OurServiceSmall3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 700,
      width: screenSize.width,
      child: Column(
        children: [
          Container(
            height: 100,
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
                      fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.3),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
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
            width: screenSize.width * 0.85,
            child: ExpansionOurServices2(),
          )
        ],
      ),
    );
  }
}
