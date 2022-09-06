import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/animation/animasi_kanan_kiri.dart';
import 'package:protalent_eksad/animation/animasi_kiri_kanan.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomeNew3 extends StatefulWidget {
  const HomeNew3({Key? key}) : super(key: key);

  @override
  State<HomeNew3> createState() => _HomeNew3State();
}

class _HomeNew3State extends State<HomeNew3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 1.03,
      width: screenSize.width,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Text("Why Protalent ?",
              style: GoogleFonts.poppins(
                  fontSize: 27,
                  color: const Color(0xff1e5ea8),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 25,
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
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        width: screenSize.width * 0.5,
                        child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/why1.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'We work as an extension of your team.',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.55,
                        child: const Animasi_Kanan_Kiri(
                            judul:
                                'We work as a true extension of your team. We believe in rolling up our sleeves, diving in and working together to deliver the top-quality, tailored solutions our clients need to grow and thrive.'))
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        width: screenSize.width * 0.5,
                        child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/why2.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'We offer smart tailored outsourcing and HR solutions.',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.55,
                        child: const Animasi_Kanan_Kiri(
                            judul:
                                'Through our tailored approach, exceptional support, and flexible solutions, we make'
                                    ' finding and retaining top talents easier and simpler.'),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        width: screenSize.width * 0.5,
                        child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/why3.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'We have a rich outsourcing experience across various industries.',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.55,
                        child: const Animasi_Kanan_Kiri(
                            judul:
                                'We have been providing outsourcing solutions to variance clients for eight years '
                                    'now helping them streamline their operations, save valuable time, and cut costs.'))
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: screenSize.height * 0.01),
                        width: screenSize.width * 0.5,
                        child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/why4.png',
                              height: 60,
                              width: 60,
                            ))),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 250,
                      height: 75,
                      child: const Text(
                        'We Are Expert recruiters.',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 10),
                        width: 220,
                        height: screenSize.height * 0.55,
                        child: ShowUpAnimation(
                          delayStart: const Duration(seconds: 1),
                          curve: Curves.decelerate,
                          direction: Direction.horizontal,
                          child: Container(
                            height: screenSize.height * 0.42,
                            child: Text(
                              'We are a team of expert recruiters, with a mission to match talented people'
                                  ' with successful employers. We strongly believe in building a value of trust, '
                                  'honesty and transparency with our clients so as to develop long term relationships'
                                  ' and to adopt flexible approach as per their needs.',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  height: 1.4),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                        // Animasi_Kanan_Kiri(judul: 'WE ARE A TEAM OF EXPERT RECRUITERS, '
                        //     'WITH A MISSION TO MATCH TALENTED PEOPLE WITH SUCCESSFUL EMPLOYERS. '
                        //     'WE STRONGLY BELIEVE IN BUILDING A VALUE OF TRUST, HONESTY, '
                        //     'AND TRANSPARENCY WITH OUR CLIENTS TO DEVELOP LONG-TERM RELATIONSHIPS '
                        //     'AND ADOPT A FLEXIBLE APPROACH AS PER THEIR NEEDS.')
                        )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
