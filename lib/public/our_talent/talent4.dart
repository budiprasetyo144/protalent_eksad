import 'package:flutter/material.dart';
import 'package:protalent_eksad/widget/expansion_home4_old.dart';

class Talent4 extends StatefulWidget {
  const Talent4({Key? key}) : super(key: key);

  @override
  State<Talent4> createState() => _Talent4State();
}

class _Talent4State extends State<Talent4> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.05,
            vertical: screenSize.height * 0.02),
        width: screenSize.width,
        height: screenSize.height * 0.8,
        //color: Colors.green,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.09,
              color: Colors.white70,
              child: const Text(
                'Industry',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 33, height: 1.5),
              ),
            ),
            const Divider(
              height: 3,
              thickness: 3,
            ),
            Expanded(
              // width: screenSize.width*0.9,
              // height: screenSize.height * 0.65,

              //color: Colors.grey,
              child: Expansionpanel(),
            ),
          ],
        )
        //Expansionpanel(),
        );
  }
}

// Row(
// children: [
// Container(
// width: screenSize.width*0.45,
// color: Colors.blue,
// ),
// Container(
// width: screenSize.width*0.45,
// color: Colors.greenAccent,
// )
// ],
// ),
