import 'package:flutter/material.dart';
import 'package:protalent_eksad/admin/dashboard/desc_talent.dart';
import 'package:protalent_eksad/admin/dashboard/side_talent.dart';
import 'package:spring/spring.dart';

//import 'desc_talent.dart';

class MainDashboard extends StatelessWidget {
  MainDashboard({Key? key, required this.all, required this.available, required this.hired}) : super(key: key);

  final Widget all;
  final Widget available;
  final Widget hired;
  final SpringController springController =
      SpringController(initialAnim: Motion.play);
  //final Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   backgroundColor: Colors.green,
      //   child: GestureDetector(
      //     onTap: () {
      //       springController.play(
      //           motion: Motion.reverse,
      //           animDuration: const Duration(milliseconds: 1000),
      //           curve: Curves.easeInBack,
      //           delay: const Duration(milliseconds: 100));
      //     },
      //     child: Spring.rotate(
      //       springController: springController,
      //       alignment: Alignment.center,
      //       animStatus: (AnimStatus status) {
      //         print(status);
      //       },
      //       child: const Icon(Icons.whatsapp, size: 30),
      //     ),
      //   ),
      // ),
      body: DefaultTabController(
          length: 3,
          child: Container(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            color: Colors.grey[200],
            child: Center(
              child: Column(
                children: [
                  TabBar(
                    labelColor: const Color(0xFF214B9A),
                    indicatorColor: const Color(0xFF214B9A),
                    tabs: [
                      Container(
                        height: 100,
                        child: const Tab(
                          icon: Icon(
                            Icons.person,
                            size: 50,
                          ),
                          text: "ALL",
                        ),
                      ),
                      Container(
                        height: 100,
                        child: const Tab(
                          icon: Icon(
                            Icons.person,
                            size: 50,
                          ),
                          text: "Available",
                        ),
                      ),
                      Container(
                          height: 100,
                          child: const Tab(
                            icon: Icon(
                              Icons.person,
                              size: 50,
                            ),
                            text: "Hired",
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        all,
                        available,
                        hired,
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class Profil extends StatelessWidget {
  const Profil({
    Key? key,
    required this.name,
    required this.gender,
    required this.age,
    required this.exp,
    required this.skill1,
    required this.skill2,
    required this.skill3,
    required this.numSkill,
    required this.salary,
    required this.lastExp,
    required this.lastPosition,
    required this.lastCompany,
    required this.berapaLama,
  }) : super(key: key);

  final String name;
  final String gender;
  final String age;
  final String exp;
  final String skill1;
  final String skill2;
  final String skill3;
  final String numSkill;
  final String salary;
  final String lastExp;
  final String lastPosition;
  final String lastCompany;
  final String berapaLama;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "New Talent!",
              style: TextStyle(
                color: Color(0xff01FF1A),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  foregroundImage: AssetImage("assets/images/petrik.png"),
                  radius: 35,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset("assets/icons/centangbiru.png")
                        ],
                      ),
                      Text("$gender, $age years old"),
                      Text("$exp years of experience"),
                      Row(
                        children: const [
                          Text(
                            "100 % match",
                            style: TextStyle(
                              color: Color(0xff01FF1A),
                            ),
                          ),
                          Icon(
                            Icons.info_outline,
                            size: 18,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Icon(Icons.bookmark_border)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Skills",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  child: Text(skill1),
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(5),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(skill2),
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(5),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(skill3),
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(5),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text("and $numSkill more"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Expected Salary",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "IDR $salary nett",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color(0xFF214B9A),
                  ),
                ),
                Container(
                  child: const Text(
                    "Non Negotiable",
                    style: TextStyle(color: Colors.red),
                  ),
                  color: Colors.red[200],
                  padding: const EdgeInsets.all(3),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Latest Experience",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "$lastExp | $lastPosition",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Text(lastCompany),

            Text(berapaLama),
          ],
        ),
      ),
    );
  }
}

class pilihan1 extends StatelessWidget {
  const pilihan1({
    Key? key,
    required this.title,
    required this.colorbackground,
    required this.colortitle,
  }) : super(key: key);

  final String title;
  final Color colorbackground;
  final Color colortitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorbackground,
          ),
          height: 110,
          width: 220,
          child: Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 9),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: colortitle),
                  child: Icon(
                    Icons.person_pin_rounded,
                    size: 50,
                    color: colorbackground,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: colortitle,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}
