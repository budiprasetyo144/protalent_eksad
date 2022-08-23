import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/animation/animasi_kiri_kanan.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Career2 extends StatefulWidget {
  const Career2({Key? key}) : super(key: key);

  @override
  State<Career2> createState() => _Career2State();
}

class _Career2State extends State<Career2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 550,
      width: screenSize.width,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Container(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.07,
                child: Text(
                  "Career Opportunities",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff1e5ea8),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 1000,
                child: Text(
                  "Depending on your area of expertise, core skills, and interest, we offer contract/project, contract-to-hire, and direct-hire opportunities in each of the specialty areas we service",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: const Color(0xff111111),
                      fontSize: 17,
                      letterSpacing: 1.3,
                      height: 1.3,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 1000,
                child: Text(
                  "Our process begins with a meticulous pairing of candidates with the right professional who understands your needs and goals.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: const Color(0xff111111),
                      fontSize: 17,
                      letterSpacing: 1.3,
                      height: 1.3,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenSize.width * 0.2,
                    child: Column(
                      children: [
                        Container(
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 4, 97, 184),
                                    width: 1),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon-service-1.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text(
                              "PERMANENT POSITIONS",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 17,
                                  letterSpacing: 1.1,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "Our understanding of the business and strong network helps find you a job that fits your skills, interests, and goals.",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  height: 1.4),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.2,
                    child: Column(
                      children: [
                        Container(
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 4, 97, 184),
                                    width: 1),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon-service-2.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text(
                              "CONTRACT-TO-HIRE",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 17,
                                  letterSpacing: 1.1,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "Everyone knows that the right experts can work wonders for your career by getting you much-needed attention.",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  height: 1.4),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.2,
                    child: Column(
                      children: [
                        Container(
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 4, 97, 184),
                                    width: 1),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon-service-3.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text(
                              "PROJECT BASIS",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 17,
                                  letterSpacing: 1.1,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "We find positions that put your right at the heart of the business and disruptive change. Step into the future.",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  height: 1.4),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.2,
                    child: Column(
                      children: [
                        Container(
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 4, 97, 184),
                                    width: 1),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/icons/icon-service-4.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text(
                              "INTERNAL STAFF",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 17,
                                  letterSpacing: 1.1,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "Join us to advance your career growth",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  height: 1.4),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
