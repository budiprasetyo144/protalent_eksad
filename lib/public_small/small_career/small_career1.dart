import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Career1_small extends StatefulWidget {
  const Career1_small({Key? key}) : super(key: key);

  @override
  State<Career1_small> createState() => _Career1_smallState();
}

class _Career1_smallState extends State<Career1_small> {
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
                    "assets/images/career1.jpg",
                  ),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover)),
        ),
        Container(
          width: screenSize.width * 0.5,
          height: screenSize.height * 0.31,
          padding: EdgeInsets.only(
              left: screenSize.width * 0.15, top: screenSize.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Career',
                style: GoogleFonts.poppins(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.3),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
