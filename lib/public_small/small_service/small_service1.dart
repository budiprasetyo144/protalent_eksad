import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/widget/button_color.dart';
import 'package:show_up_animation/show_up_animation.dart';

class OurServicesSmall1 extends StatefulWidget {
  const OurServicesSmall1({Key? key}) : super(key: key);

  @override
  State<OurServicesSmall1> createState() => _OurServicesSmall1State();
}

class _OurServicesSmall1State extends State<OurServicesSmall1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.6,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/home1.jpg",
                ),
                fit: BoxFit.fitHeight),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: screenSize.width,
          height: screenSize.height * 0.5,

          // ),
        ),
        Container(
          padding: EdgeInsets.only(right: screenSize.width*0.45),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 50),
                Container(
                  width: screenSize.width*0.5,
                  height: screenSize.height * 0.13,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    direction: Direction.horizontal,
                    child: Text(
                      'Find & Get the Best Talent',
                      style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: screenSize.width * 0.5,
                  height: screenSize.height * 0.2,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: Text(
                      'Register for free now, find our Best Talent, and enjoy our unlimited hires at a low cost',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          letterSpacing: 1.8,
                          height: 1.4,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      style: DefaultColors(),
                      child: const Text(
                        'FREE REGISTER',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.1,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
