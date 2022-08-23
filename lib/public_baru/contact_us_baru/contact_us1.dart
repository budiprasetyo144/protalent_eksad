import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUs1 extends StatefulWidget {
  const ContactUs1({Key? key}) : super(key: key);

  @override
  State<ContactUs1> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.42,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/contactus1.jpg",
                  ),
                  alignment: Alignment.center,
                  fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width * 0.5,
          height: screenSize.height * 0.34,
          padding: EdgeInsets.only(
              right: screenSize.width * 0.30, left: screenSize.height * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Contact Us',
                style: GoogleFonts.poppins(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
