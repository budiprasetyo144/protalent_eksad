import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSmall extends StatelessWidget {
  const FooterSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Divider(
          height: 3,
          thickness: 3,
        ),
        SizedBox(
          height: screenSize.height * 0.01,
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 5),
                  width: screenSize.width,
                  height: screenSize.height * 0.29,
                  child: Column(
                    children: [
                      Container(
                        width: screenSize.width * 0.4,
                        height: screenSize.height * 0.08,
                        decoration: const BoxDecoration(
                          //color: Colors.lightBlueAccent,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/logo/protalent.png'),
                                fit: BoxFit.fill)),
                      ),
                      Spacer(),
                      Container(
                        width: screenSize.width * 0.3,
                        height: screenSize.height * 0.09,
                        decoration: const BoxDecoration(
                          //color: Colors.lightBlueAccent,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/logo/logo-eksad.png'),
                                fit: BoxFit.fill)),
                      ),
                      const Spacer(),
                      Container(
                        width: screenSize.width * 0.6,
                        height: screenSize.height * 0.03,
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
                        width: screenSize.width,
                        height: screenSize.height * 0.03,
                        padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.15),
                        //color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                launch(
                                    'https://www.linkedin.com/company/pt-tiga-daya-digital-indonesia-triputra-group-eksad-technology');
                              },
                              icon: const Icon(
                                FontAwesomeIcons.linkedinIn,
                                size: 30,
                              ),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                launch(
                                    'https://twitter.com/eksadtechnology/');
                              },
                              icon: const Icon(
                                FontAwesomeIcons.twitter,
                                size: 30,
                              ),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                launch(
                                    'https://www.instagram.com/eksad_technology/');
                              },
                              icon: const Icon(
                                FontAwesomeIcons.instagram,
                                size: 30,
                              ),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                launch(
                                    'https://www.youtube.com/channel/UCiZgIbpWgrAMrHW-TaS9EPw');
                              },
                              icon: const Icon(
                                FontAwesomeIcons.youtube,
                                size: 30,
                              ),
                              iconSize: 20,
                            )
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      )
                    ],
                  )),
              Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.35,
                  //color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.1,
                        child: Center(
                          child: Text(
                            ' Sitemap',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Home',
                          routeName: '/',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'About Us',
                          routeName: '/about',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Service',
                          routeName: '/service',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Career',
                          routeName: '/career',
                        ),
                      ),
                      Spacer()
                    ],
                  )),
              Container(
                  width: screenSize.width,
                  height: screenSize.height * 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.1,
                        child: Center(
                          child: Text(
                            ' Solutions',
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ),

                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Retained Search',
                          routeName: '/service',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Dedicated Services',
                          routeName: '/service',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Contract Services',
                          routeName: '/service',
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: screenSize.height * 0.06,
                        child: const itemBawah_small(
                          item: 'Recruitment',
                          routeName: '/service',
                        ),
                      ),
                    ],
                  )),
              Center(
                child: Container(
                    width: screenSize.width * 0.95,
                    height: screenSize.height * 0.56,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenSize.width,
                          height: screenSize.height * 0.1,
                          child: Center(
                            child: Text(
                              ' Contact',
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.15),
                              width: screenSize.width,
                              child: ListTile(
                                minLeadingWidth: 0,
                                leading: const Icon(
                                  Icons.phone,
                                  size: 19,
                                  color: Colors.black,
                                ),
                                title: TextButton(
                                    onPressed: () {
                                      launch('tel:02157958040');
                                    },
                                    child: Text(
                                      '(021) 5795 - 8040',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.15),
                              width: screenSize.width ,

                              child: ListTile(
                                minLeadingWidth: 2,
                                leading: const Icon(
                                  Icons.mail,
                                  size: 19,
                                  color: Colors.black,
                                ),
                                title: TextButton(
                                  onPressed: () {
                                    launch(
                                        'mailto:Info@eksad.com?subject=Info MCS');
                                  },
                                  child: Text(
                                    'info@eksad.com',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14, color: Colors.black87,letterSpacing: 1.1),
                                  ),
                                ),
                              ),
                            ),
                            Container(

                              padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.15),
                              width: screenSize.width,
                              child: ListTile(
                                  minLeadingWidth: 2,
                                  leading: const Icon(
                                    Icons.location_on,
                                    size: 24,
                                    color: Colors.black,
                                  ),
                                  title: Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    width: screenSize.width * 0.48,
                                    child: Text(
                                      'PT. Tiga Daya Digital Indonesia \nThe East '
                                          'Tower 19th Floor \nJl. Dr. Ide Anak Agung '
                                          '\nGde Agung Blok E3.2 '
                                          '\nMega Kuningan, \nJakarta Selatan 12950',
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          height: 1.45,
                                          letterSpacing: 1.1
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                            ),
                          ],
                        ),



                      ],
                    )),
              ),
            ],
          ),
        ),
        const Divider(
          height: 3,
          thickness: 3,
        ),
        SizedBox(
          width: screenSize.width,
          height: screenSize.height * 0.12,
          child: const Center(
              child: Text(
                'PT. Tiga Daya Digital Indonesia © 2018, \nAll Rights Reserved.',
                style: TextStyle(letterSpacing: 1.3, height: 1.4, fontSize: 13),
                textAlign: TextAlign.center,
              ),
          ),
        )
      ],
    );
  }
}

class itemBawah_small extends StatelessWidget {
  const itemBawah_small({Key? key, required this.item, required this.routeName})
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
              letterSpacing: 1.2
          ),
        ));
  }
}
