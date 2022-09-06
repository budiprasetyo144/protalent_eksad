import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/animation/animasi_kiri_kanan.dart';
import 'package:show_up_animation/show_up_animation.dart';

class OurServices1b extends StatefulWidget {
  const OurServices1b({Key? key}) : super(key: key);

  @override
  State<OurServices1b> createState() => _OurServices1bState();
}

class _OurServices1bState extends State<OurServices1b> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 600,
      width: screenSize.width,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  "Our Services",
                  style: GoogleFonts.poppins(
                    color: const Color(0xff1e5ea8),
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 1000,
                child: Text(
                  "We adopt a simple approach - we listen. Our consultants listen to our candidates and our client. The consultants are match-makers and work to meet the needs of both the client and the candidate to make the perfect fit. Of course, please feel free to ask us about any blended solution that appeals to you and we will try to make it happen.",
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
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    width: screenSize.width * 0.2,
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.01),
                          width: screenSize.width * 0.5,
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/icon-service-1.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                          
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 47,
                          padding: const EdgeInsets.only(top: 5),
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text("RETAINED SEARCH",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 16,
                                    letterSpacing: 1.1,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          width: 220,
                          height: 180,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "We not only keep our eyes wide open for talented individuals, but we also make it an active endeavor. One that digs deeper to find you that star employee ahead of your competition.",
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
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.01),
                          width: screenSize.width * 0.5,
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/icon-service-2.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                         
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 47,
                          padding: const EdgeInsets.only(top: 5),
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text("DEDICATED SERVICES",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 16,
                                    letterSpacing: 1.1,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          width: 200,
                          height: 180,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "Our dedicated team of recruiters helps fulfill your critical hiring needs in the mid-level and executive positions making the recruitment cycle short and efficient.",
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
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.01),
                          width: screenSize.width * 0.5,
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/icon-service-3.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                         
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 47,
                          padding: const EdgeInsets.only(top: 5),
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text("CONTRACT SERVICES",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 16,
                                    letterSpacing: 1.1,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          width: 200,
                          height: 180,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "Time-sensitive projects are treated with urgency to provide skilled technical resources needed for quick and cost-effective turnaround.",
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
                          padding:
                              EdgeInsets.only(top: screenSize.height * 0.01),
                          width: screenSize.width * 0.5,
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/icon-service-4.png',
                              height: 60,
                              width: 60,
                            ),
                          ),
                          
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 47,
                          padding: const EdgeInsets.only(top: 5),
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text(
                              "RECRUITMENT PROCESS OUTSOURCING",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 16,
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
                          padding: const EdgeInsets.only(top: 10),
                          width: 220,
                          height: 180,
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: Text(
                              "Hire the best without ever having to face the logistics. From the very beginning till actually getting your next 'rockstar' employees to walk in and take their positions on your floors.",
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
