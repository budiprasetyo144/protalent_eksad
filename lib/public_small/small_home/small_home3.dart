import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/animation/animasi_kanan_kiri.dart';
import 'package:protalent_eksad/animation/animasi_kiri_kanan.dart';
import 'package:protalent_eksad/animation/kanan_kiri_small.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HomeSmall3 extends StatefulWidget {
  const HomeSmall3({Key? key}) : super(key: key);

  @override
  State<HomeSmall3> createState() => _HomeSmall3State();
}

class _HomeSmall3State extends State<HomeSmall3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 1.7,
      width: screenSize.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height:30,
          ),
          Text("Why Protalent ?",
              style: GoogleFonts.poppins(
                  fontSize: 34,
                  color: const Color(0xff1e5ea8),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: screenSize.width,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: screenSize.width * 0.17,
                        child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/why1.png',
                              height: 35,
                              width: 35,
                            )
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 150,
                      height: 55,
                      child: const Text(
                        'We work as an extension of your team.',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  width: 270,
                  height: screenSize.height * 0.3,
                  child: const Animasi_Kanan_Kiri_Small(
                      judul:
                      'We work as a true extension of your team. We believe in rolling up our sleeves, '
                          'diving in and working together to deliver the top-quality, tailored solutions our '
                          'clients need to grow and thrive.'),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: screenSize.width,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: screenSize.width * 0.17,
                        child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/why2.png',
                              height: 35,
                              width: 35,
                            )
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.only(top: 5,left: 2),
                      width: 150,
                      height: 55,
                      child: const Text(
                        'We offer smart tailored outsourcing and HR solutions.',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  width: 270,
                  height: screenSize.height * 0.2,
                  child: const Animasi_Kanan_Kiri_Small(
                      judul:
                      'Through our tailored approach, exceptional support, and flexible solutions, we make'
                          ' finding and retaining top talents easier and simpler.'),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: screenSize.width,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: screenSize.width * 0.17,
                        child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/why3.png',
                              height: 35,
                              width: 35,
                            )
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 150,
                      height: 66,
                      child: const Text(
                        'We have a rich outsourcing experience across various industries.',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 14,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  width: 270,
                  height: screenSize.height * 0.25,
                  child: const Animasi_Kanan_Kiri_Small(
                      judul:
                      'We have been providing outsourcing solutions to variance clients for eight years '
                          'now helping them streamline their operations, save valuable time, and cut costs.'),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: screenSize.width,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: screenSize.width * 0.17,
                        child: Animasi_Kiri_Kanan(
                            screenSize: screenSize,
                            widget: Image.asset(
                              'assets/icons/why4.png',
                              height: 35,
                              width: 35,
                            )
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      width: 150,
                      height: 55,
                      child: const Text(
                        'We Are Expert recruiters.',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 15,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  width: 270,
                  height: screenSize.height * 0.38,
                  child: const Animasi_Kanan_Kiri_Small(
                      judul:
                      'We are a team of expert recruiters, with a mission to match talented people'
                          ' with successful employers. We strongly believe in building a value of trust, '
                          'honesty and transparency with our clients so as to develop long term relationships'
                          ' and to adopt flexible approach as per their needs.'),
                ),

              ],
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}
