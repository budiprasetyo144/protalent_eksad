import 'package:flutter/material.dart';
// import 'package:protalent_eksad/const/text_homepage.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
        //padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
        width: screenSize.width,
        height: screenSize.height * 0.45,
        //color: Colors.grey,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.1,
              //color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: screenSize.width * 0.09,
                      height: screenSize.height * 0.1,
                      child: const Text(
                        'Mengapa ',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      width: screenSize.width * 0.075,
                      height: screenSize.height * 0.1,
                      child: const Text(
                        'HARUS ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 26, 32, 107),
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      width: screenSize.width * 0.12,
                      height: screenSize.height * 0.1,
                      child: const Text(
                        'Hire Talenta',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      width: screenSize.width * 0.09,
                      height: screenSize.height * 0.1,
                      child: const Text(
                        'ProTalent',
                        style: TextStyle(
                            color: Color.fromARGB(255, 26, 32, 107),
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      width: screenSize.width * 0.01,
                      height: screenSize.height * 0.1,
                      child: const Text('?',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: screenSize.width,
              height: screenSize.height * 0.3,
              //color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenSize.width * 0.31,
                    height: screenSize.height * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person_pin_sharp,
                          size: 70,
                          color: Color.fromARGB(255, 26, 32, 107),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Container(
                            width: screenSize.width * 0.3,
                            height: screenSize.height * 0.05,
                            child: const Center(
                                child: Text('Terlatih & Profesional',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold))))
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.31,
                    height: screenSize.height * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person_add,
                          size: 70,
                          color: Color.fromARGB(255, 26, 32, 107),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Container(
                            width: screenSize.width * 0.3,
                            height: screenSize.height * 0.05,
                            child: const Center(
                                child: Text('Proses Hiring yang Mudah',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold))))
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.31,
                    height: screenSize.height * 0.2,
                    //color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.shopping_bag_outlined,
                          size: 70,
                          color: Color.fromARGB(255, 26, 32, 107),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Container(
                            width: screenSize.width * 0.3,
                            height: screenSize.height * 0.05,
                            //color: Colors.white,
                            child: const Center(
                                child: Text('Mampu Berkompetisi & Berkembang',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)))),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
