import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/animation/animasi_kiri_kanan.dart';
import 'package:show_up_animation/show_up_animation.dart';

class OurServiceSmall2 extends StatefulWidget {
  const OurServiceSmall2({Key? key}) : super(key: key);

  @override
  State<OurServiceSmall2> createState() => _OurServiceSmall2State();
}

class _OurServiceSmall2State extends State<OurServiceSmall2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height:screenSize.height*2,
      width: screenSize.width,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
            child: Text(
              "Our Services",
              style: GoogleFonts.poppins(
                color: const Color(0xff1e5ea8),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: screenSize.width,
            padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.1),
            child: Text(
              "We adopt a simple approach - we listen. "
                  "Our consultants listen to our candidates and our client. "
                  "The consultants are match-makers and work to meet the needs of"
                  " both the client and the candidate to make the perfect fit."
                  " Of course, please feel free to ask us about any blended solution "
                  "that appeals to you and we will try to make it happen.",
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  color: const Color(0xff111111),
                  fontSize: 15,
                  letterSpacing: 1.3,
                  height: 1.3,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 65,
          ),

          Column(
            children: [
              Container(
                width: screenSize.width*0.9,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding:
                          EdgeInsets.only(top: screenSize.height * 0.01),
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 40,
                              height: 40,
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
                          width: screenSize.width*0.3,
                          height: 50,
                          padding: const EdgeInsets.only(top: 5),
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text("RETAINED SEARCH",
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

                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10,left: 5),
                      width: 220,
                      height: 195,
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
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21,),
              Container(
                width: screenSize.width*0.9,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding:
                          EdgeInsets.only(top: screenSize.height * 0.01),
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 40,
                              height: 40,
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
                          width: screenSize.width*0.3,
                          height: 50,
                          padding: const EdgeInsets.only(top: 5),
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text("DEDICATED SERVICES",
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
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10,left: 5),
                      width: 220,
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
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18,),
              Container(
                width: screenSize.width*0.9,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding:
                          EdgeInsets.only(top: screenSize.height * 0.01),
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 40,
                              height: 40,
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
                          width: screenSize.width*0.3,
                          height: 50,
                          padding: const EdgeInsets.only(top: 5),
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text("CONTRACT SERVICES",
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
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10,left: 5),
                      width: 220,
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
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18,),
              Container(
                width: screenSize.width*0.9,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding:
                          EdgeInsets.only(top: screenSize.height * 0.01),
                          child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Container(
                              width: 40,
                              height: 40,
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
                          width: screenSize.width*0.325,
                          height: 80,
                          padding: const EdgeInsets.only(top: 5),
                          child: ShowUpAnimation(
                            delayStart: const Duration(seconds: 1),
                            direction: Direction.horizontal,
                            child: const Text("RECRUITMENT PROCESS OUTSOURCING",
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
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10,left: 5),
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
                          textAlign: TextAlign.justify,
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
    );
  }
}
