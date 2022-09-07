import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/widget/button_color.dart';
import 'package:show_up_animation/show_up_animation.dart';

class OurServices1a extends StatefulWidget {
  const OurServices1a({Key? key}) : super(key: key);

  @override
  State<OurServices1a> createState() => _OurServices1aState();
}

class _OurServices1aState extends State<OurServices1a> {
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
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: screenSize.width,
          height: screenSize.height * 0.5,

          // ),
        ),
        Container(
          padding: EdgeInsets.only(right: screenSize.width * 0.5),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 70),
                Container(
                  height: screenSize.height * 0.10,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    direction: Direction.horizontal,
                    child: Text(
                      'Find & Get the Best Talent',
                      style: GoogleFonts.poppins(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: screenSize.width * 0.28,
                  height: screenSize.height * 0.15,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.horizontal,
                    offset: -0.2,
                    child: Text(
                      'Register for free now, find our Best Talent, and enjoy our unlimited hires at a low cost',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          letterSpacing: 1.8,
                          height: 1.4,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 60,
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
                            fontSize: 16,
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
