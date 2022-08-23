import 'package:flutter/material.dart';

class Talent3 extends StatefulWidget {
  const Talent3({Key? key}) : super(key: key);

  @override
  State<Talent3> createState() => _Talent3State();
}

class _Talent3State extends State<Talent3> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.2,
      //color: Colors.grey,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.273, vertical: 53),
        width: screenSize.width * 0.5,
        height: screenSize.height * 0.05,
        //: Colors.blue,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: const Color.fromARGB(255, 0, 17, 255),
            shadowColor: Colors.white,
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            onSurface: Colors.white,
          ),
          child: const Text(
            'Discover more about Industries in ProTalent',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
