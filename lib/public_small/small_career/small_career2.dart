import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Career2_small extends StatelessWidget {
  const Career2_small({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.5,
      height: screenSize.height*0.7,
      color: const Color.fromARGB(60, 190, 169, 169),
      padding: EdgeInsets.only(
        left: screenSize.width * 0.10,
        right: screenSize.width * 0.10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            width: screenSize.width,
            child: Text('How do we help?',
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 12, 66, 101),
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: screenSize.width,
            child: Text(
                'The most difficult part of finding the right job is finding the right job. We get this and '
                    'we’re here to make this process a bit easier for you.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    letterSpacing: 1.1,
                    height: 1.3,
                    fontWeight: FontWeight.w500)),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: screenSize.width,
            height: screenSize.height*0.35,
            child: Text(
                'Each candidate, each one of you has a unique advantage and we work hard to help you identify '
                    'your core skills, technical abilities, and competitive edge to help you grab that right '
                    'opportunity! In addition to all the placement opportunities we discuss and share, '
                    'we promise to support and confidentiality in all your matters.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    letterSpacing: 1.1,
                    height: 1.3,
                    fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
