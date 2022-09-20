import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/api/sosmed_api.dart';
import 'package:url_launcher/url_launcher.dart';

import 'api/setting_api.dart';

class Footer extends StatelessWidget {
  Footer({Key? key}) : super(key: key);
  String ln = '';
  String tw = '';
  String ig = '';
  String yt = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        width: screenSize.width,
        height: screenSize.height * 0.83,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(
              height: 3,
              thickness: 3,
            ),
            SizedBox(
              height: screenSize.height * 0.07,
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 5),
                      width: screenSize.width * 0.2,
                      height: screenSize.height * 0.35,
                      child: Column(
                        children: [
                          Container(
                            width: screenSize.width * 0.10,
                            height: screenSize.height * 0.05,
                            decoration: const BoxDecoration(
                                //color: Colors.lightBlueAccent,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/logo/protalent.png'),
                                    fit: BoxFit.fill)),
                          ),
                          const Spacer(
                            flex: 8,
                          ),
                          Container(
                            width: screenSize.width * 0.1,
                            height: screenSize.height * 0.08,
                            decoration: const BoxDecoration(
                                //color: Colors.lightBlueAccent,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/logo/logo-eksad.png'),
                                    fit: BoxFit.fill)),
                          ),
                          const Spacer(
                            flex: 5,
                          ),
                          Container(
                            width: screenSize.width * 0.2,
                            height: screenSize.height * 0.05,
                            //color: Colors.blue,
                            child: const Center(
                              child: Text(
                                'Your one stop IT Solution',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Container(
                            width: screenSize.width * 0.14,
                            height: screenSize.height * 0.03,
                            //color: Colors.blue,
                            child: FutureBuilder<List<dynamic>>(
                              future: getSosmedDesc(),
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                var pgm = snapshot.data[0];
                                if (snapshot.hasError ||
                                    snapshot.data == null ||
                                    snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                  return const CircularProgressIndicator();
                                }
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          ln = pgm['linkedin'];
                                          launch(ln);
                                          // _launchLinkedIn();
                                        },
                                        icon: const Icon(
                                          FontAwesomeIcons.linkedinIn,
                                          size: 25,
                                        ),
                                        iconSize: 25,
                                        color: Colors.black),
                                    IconButton(
                                      onPressed: () {
                                        tw = pgm['twitter'];
                                        launch(tw);
                                        //_launchTwitter();
                                      },
                                      icon: const Icon(
                                        FontAwesomeIcons.twitter,
                                        size: 25,
                                      ),
                                      iconSize: 25,
                                      color: Colors.black,
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          ig = pgm['instagram'];
                                          launch(ig);
                                          // _launchInstagram();
                                        },
                                        icon: const Icon(
                                          FontAwesomeIcons.instagram,
                                          size: 25,
                                        ),
                                        iconSize: 25,
                                        color: Colors.black),
                                    IconButton(
                                        onPressed: () {
                                          yt = pgm['youtube'];
                                          launch(yt);
                                          //  _launchYoutube();
                                        },
                                        icon: const Icon(
                                          FontAwesomeIcons.youtube,
                                          size: 25,
                                        ),
                                        iconSize: 25,
                                        color: Colors.black)
                                  ],
                                );
                              },
                            ),
                          ),
                          const Spacer(
                            flex: 8,
                          )
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.13,
                      height: screenSize.height * 0.27,
                      //color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenSize.width * 0.13,
                            height: screenSize.height * 0.07,
                            child: Text(
                              ' Sitemap',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Home',
                              routeName: '/',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'About Us',
                              routeName: '/about',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Service',
                              routeName: '/service',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Career',
                              routeName: '/career',
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.13,
                      height: screenSize.height * 0.27,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: screenSize.width * 0.13,
                            height: screenSize.height * 0.07,
                            child: Text(
                              ' Solutions',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Retained Search',
                              routeName: '/service',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Dedicated Services',
                              routeName: '/service',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Contract Services',
                              routeName: '/service',
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: screenSize.height * 0.04,
                            child: const itemBawah(
                              item: 'Recruitment',
                              routeName: '/service',
                            ),
                          ),
                        ],
                      )),
                  Container(
                      width: screenSize.width * 0.28,
                      height: screenSize.height * 0.55,
                      //color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: screenSize.width * 0.2,
                            height: screenSize.height * 0.07,
                            child: Text(
                              '  Contact',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TelphoneApi(),
                          EmailAPI(),
                          Container(
                            width: screenSize.width * 0.25,
                            height: screenSize.height * 0.30,
                            child: ListTile(
                                leading: const Icon(
                                  Icons.location_on,
                                  size: 25,
                                ),
                                title: Container(
                                  padding:
                                      const EdgeInsets.only(left: 14, top: 10),
                                  width: screenSize.width * 0.25,
                                  height: screenSize.height * 0.3,
                                  child: Text(
                                    'PT. Tiga Daya Digital Indonesia \nThe East '
                                    'Tower 19th Floor \nJl. Dr. Ide Anak Agung '
                                    '\nGde Agung Blok E3.2 '
                                    '\nMega Kuningan, \nJakarta Selatan 12950',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      height: 1.5,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                )),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            const Divider(
              height: 3,
              thickness: 3,
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height * 0.13,
              child: const Center(
                  child: Text(
                'PT. Tiga Daya Digital Indonesia © 2018, All Rights Reserved.',
                style: TextStyle(letterSpacing: 1.3, height: 1.4, fontSize: 17),
              )),
            )
          ],
        ));
  }
}

class itemBawah extends StatelessWidget {
  const itemBawah({Key? key, required this.item, required this.routeName})
      : super(key: key);
  final String item;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Text(
          item,
          style: GoogleFonts.poppins(
              color: const Color(0xff1e5ea8),
              //decoration: TextDecoration.underline,
              fontSize: 17,
              letterSpacing: 1.2),
        ));
  }
}

class TelphoneApi extends StatefulWidget {
  const TelphoneApi({Key? key}) : super(key: key);

  @override
  State<TelphoneApi> createState() => _TelphoneApiState();
}

class _TelphoneApiState extends State<TelphoneApi> {
  String no = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return FutureBuilder<List<dynamic>>(
      future: getSettingDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];
        if (snapshot.hasError ||
            snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return Container(
          width: screenSize.width * 0.19,
          child: ListTile(
            leading: const Icon(
              Icons.phone,
              size: 23,
              color: Colors.black,
            ),
            title: TextButton(
                onPressed: () {
                  no = pgm['no'];
                  //02157958040
                  launch('tel:$no');
                },
                child: Text(
                  pgm['no'],
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.black87, letterSpacing: 1.5),
                )),
          ),
        );
      },
    );
  }
}

class EmailAPI extends StatefulWidget {
  const EmailAPI({Key? key}) : super(key: key);

  @override
  State<EmailAPI> createState() => _EmailAPIState();
}

class _EmailAPIState extends State<EmailAPI> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return FutureBuilder<List<dynamic>>(
      future: getSettingDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];
        if (snapshot.hasError ||
            snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return Container(
          width: screenSize.width * 0.2,
          child: ListTile(
            leading: const Icon(
              Icons.mail,
              size: 23,
              color: Colors.black,
            ),
            title: TextButton(
                onPressed: () {
                  email = pgm['email'];
                  launch('mailto:$email?subject=Info MCS');
                },
                // child: SettingAPI(),
                child: Text(
                  pgm['email'],
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.black87, letterSpacing: 1.1),
                )),
          ),
        );
      },
    );
  }
}
