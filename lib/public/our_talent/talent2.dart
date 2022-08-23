import 'package:flutter/material.dart';
import 'package:protalent_eksad/const/text_homepage.dart';

class Talent2 extends StatefulWidget {
  const Talent2({Key? key}) : super(key: key);

  @override
  State<Talent2> createState() => _Talent2State();
}

class _Talent2State extends State<Talent2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      width: screenSize.width,
      height: screenSize.height * 0.8,
      //color: Colors.grey,
      child: Row(
        children: [
          SizedBox(
            width: screenSize.width * 0.45,
            //color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Container(
                      width: screenSize.width * 0.1,
                      height: 50,
                      //color: Colors.white,
                      child: const Text(
                        'Mengapa',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: screenSize.width * 0.1,
                      height: 50,
                      //color: Colors.white70,
                      child: const Text(
                        'HARUS',
                        style: TextStyle(
                            color: Color.fromARGB(255, 26, 32, 107),
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: screenSize.width * 0.13,
                      height: 50,
                      //color: Colors.white,
                      child: const Text(
                        'Hire Talenta',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: screenSize.width * 0.092,
                      height: 50,
                      //color: Colors.white,
                      child: const Text(
                        'ProTalent',
                        style: TextStyle(
                            color: Color.fromARGB(255, 26, 32, 107),
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: screenSize.width * 0.001,
                      child: const Text('?',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: screenSize.width * 0.37,
                  height: 300,
                  //color: Colors.blueAccent,
                  child: Text(
                    home2_body,
                    style: const TextStyle(
                        fontSize: 19, letterSpacing: 1.5, height: 1.5),
                  ),
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 30, top: 18, bottom: 18),
            width: screenSize.width * 0.45,
            //color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _list(Icons.person_pin_sharp, home2_title1, home2_subtitle1),
                _list(Icons.person_add, home2_title2, home2_subtitle2),
                _list(
                    Icons.shopping_bag_outlined, home2_title3, home2_subtitle3),
              ],
            ),
          )
        ],
      ),
    );
  }
}

ListTile _list(IconData _icon, String title, String body) {
  return ListTile(
    leading: Container(
      child: Icon(
        _icon,
        size: 50,
        color: const Color.fromARGB(255, 29, 37, 129),
      ),
    ),
    minLeadingWidth: 60,
    title: Container(
        height: 50,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold, letterSpacing: 1.5),
        )),
    subtitle: Container(
        height: 85,
        child: Text(
          body,
          style: const TextStyle(fontSize: 18, letterSpacing: 1.1, height: 1.2),
        )),
  );
}
