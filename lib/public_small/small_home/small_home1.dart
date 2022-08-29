import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/widget/button_color.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomeSmall1 extends StatelessWidget {
  const HomeSmall1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.7,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/home2.jpg",
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.66,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 15,),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.16,
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  direction: Direction.horizontal,
                  child: Text(
                    'EMPOWER YOUR BUSINESS FOR SUCCESS.',
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.4,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: Text(
                    'If you’ve got the combination of the most sought-after IT'
                        ' expertise, which is augmented by new technologies that provide you with the '
                        'edge over your competition, you can create the future you want to see. '
                        '\n \nOur'
                        ' top-of-the-line IT professional outsourcing and managed services allow companies '
                        'to plan for what’s to come.\n ',
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        letterSpacing: 1.5,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: screenSize.width * 0.45,
                height: screenSize.height * 0.07,
                child: ShowUpAnimation(
                  delayStart: const Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.horizontal,
                  offset: -0.2,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    style: DefaultColors(),
                    child: const Text(
                      'CONTACT US',
                      style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 2,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
