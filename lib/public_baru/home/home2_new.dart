import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNew2 extends StatelessWidget {
  const HomeNew2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.5,
      color: const Color.fromARGB(255, 227, 235, 253),
      height: 350,
      padding: EdgeInsets.only(
        left: screenSize.width * 0.105,
        right: screenSize.width * 0.11,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(flex: 2,),
          Container(
            width: screenSize.width,
            child: Text('How do we help ?',
                style: GoogleFonts.poppins(
                    fontSize: 27,
                    color: const Color.fromARGB(255, 12, 66, 101),
                    fontWeight: FontWeight.bold)),
          ),
          Spacer(flex: 2,),
          Container(
            width: screenSize.width,
            child: Text(
                'We understand the complexities of finding the right candidate and its impact on business. We provide cost savings, and'
                'operational efficiency with a recruitment solution customized to your needs.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    letterSpacing: 1.1,
                    height: 1.3,
                    fontWeight: FontWeight.w500)),
          ),
          Spacer(),
          Container(
            width: screenSize.width,
            child: Text(
                'Not only do we pick a qualified candidate, '
                'we ensure we look for one who fits into your company culture. '
                'This will guarantee a high retention rate and employee satisfaction.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    letterSpacing: 1.1,
                    height: 1.3,
                    fontWeight: FontWeight.w500)),
          ),
          Spacer(),
          Container(
            width: screenSize.width,
            child: Text(
                'We are flexible with rates and provide strategic recruiting that help to achieve the most value for our client. '
                'We adapt to market shifts with a promise to deliver and make it happen.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    letterSpacing: 1.1,
                    height: 1.3,
                    fontWeight: FontWeight.w500)),
          ),
          Spacer(flex: 2,),
        ],
      ),
    );
  }
}
