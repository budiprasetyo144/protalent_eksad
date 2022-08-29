import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/widget/expansion_home4.dart';

class HomeSmall4 extends StatefulWidget {
  const HomeSmall4({Key? key}) : super(key: key);

  @override
  State<HomeSmall4> createState() => _HomeSmall4State();
}

class _HomeSmall4State extends State<HomeSmall4> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: 950,
      width: screenSize.width,
      child: Column(
        children: [
          Container(
            height: 130,
            color: const Color(0xff1e5ea8),
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'VARIOUS INDUSTRY AND SECTORS',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Each industry has its specific needs, we are'
                        ' ready to help to provide services according to its industry'
                        ', from initial discussions to providing expert consultants.',
                    style: GoogleFonts.poppins(fontSize: 13, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox()
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            width: screenSize.width * 0.9,
            color: Colors.white,
            child: ExpansionHome4(),
          ),
        ],
      ),
    );


  }
}
