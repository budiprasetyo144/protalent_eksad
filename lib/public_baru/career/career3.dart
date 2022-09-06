import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:protalent_eksad/login.dart';
import 'package:url_launcher/url_launcher.dart';

class Career3 extends StatelessWidget {
  const Career3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[
          Color(0xff137fc2),
          Color(0xff3958d5),
          Color(0xff184b80),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      width: screenSize.width * 0.5,
      height: 350,
      padding: EdgeInsets.only(
        left: screenSize.width * 0.10,
        right: screenSize.width * 0.10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            width: screenSize.width,
            alignment: Alignment.center,
            child: Text('Apply Your Resume',
                style: GoogleFonts.poppins(
                    fontSize: 27,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold)),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            width: screenSize.width,
            alignment: Alignment.center,
            child: Text(
              'You may or may not be actively looking for a job at the moment but some positions will give you a peep into the dynamic '
              'job market. Submit your resume from the button bellow and our consultants will do the rest.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                letterSpacing: 1.1,
                // height: 1.3,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            height: 40,
            width: screenSize.width * 0.10,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // padding: const EdgeInsets.all(15),
                  fixedSize: screenSize,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: const Color.fromARGB(255, 12, 66, 101)
                  // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
              onPressed: () {
                _launchURL();
              },
              child: const Text("APPLY NOW", style: TextStyle(fontSize: 16)),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://bit.ly/EksadFormApplicant';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
