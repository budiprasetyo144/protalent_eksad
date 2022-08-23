import 'package:flutter/material.dart';
import 'package:protalent_eksad/client/sidemenu_talent.dart';
import 'package:protalent_eksad/widget/dropdown_dashboard.dart';
import 'package:protalent_eksad/widget/whatsapp.dart';
// import 'package:url_launcher/url_launcher.dart';

class FindTalent extends StatefulWidget {
  const FindTalent({Key? key}) : super(key: key);

  @override
  State<FindTalent> createState() => _FindTalentState();
}

class _FindTalentState extends State<FindTalent> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: WAChat(),
        body: Column(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.15,
              color: const Color.fromRGBO(238, 224, 224, 1),
              child: Center(
                child: Container(
                  width: screenSize.width * 0.83,
                  height: screenSize.height * 0.12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.04,
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 23,
                            ),
                            Text(
                              'Position',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Skill',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            SizedBox(
                              width: 33,
                            ),
                            Text(
                              'Level',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            SizedBox(
                              width: 31,
                            ),
                            Text(
                              'Industry',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            SizedBox(
                              width: 21,
                            ),
                            Text(
                              'Location',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(
                              flex: 5,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          DropDownDashboard2(
                              item1: 'Software Enginering',
                              item2: 'Flutter Developer',
                              item3: 'Backend Developer',
                              item4: 'Frontend Developer',
                              item5: 'Mobile Developer'),
                          const SizedBox(
                            width: 20,
                          ),
                          DropDownDashboard2(
                              item1: 'Software Enginering',
                              item2: 'Flutter Developer',
                              item3: 'Backend Developer',
                              item4: 'Frontend Developer',
                              item5: 'Mobile Developer'),
                          const SizedBox(
                            width: 20,
                          ),
                          DropDownDashboard2(
                              item1: 'Software Enginering',
                              item2: 'Flutter Developer',
                              item3: 'Backend Developer',
                              item4: 'Frontend Developer',
                              item5: 'Mobile Developer'),
                          const SizedBox(
                            width: 20,
                          ),
                          DropDownDashboard2(
                              item1: 'Software Enginering',
                              item2: 'Flutter Developer',
                              item3: 'Backend Developer',
                              item4: 'Frontend Developer',
                              item5: 'Mobile Developer'),
                          const SizedBox(
                            width: 20,
                          ),
                          DropDownDashboard2(
                              item1: 'Software Enginering',
                              item2: 'Flutter Developer',
                              item3: 'Backend Developer',
                              item4: 'Frontend Developer',
                              item5: 'Mobile Developer'),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              color: Colors.white,
                              height: 45,
                              width: screenSize.width * 0.12,
                              child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      onPrimary: Colors.blue),
                                  onPressed: () {},
                                  icon: SizedBox(
                                      width: screenSize.width * 0.02,
                                      child: const Icon(
                                        Icons.search,
                                        color: Colors.blue,
                                      )),
                                  label: SizedBox(
                                      width: screenSize.width * 0.08,
                                      child: const Text(
                                        'Search',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500),
                                      )))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              width: screenSize.width,
              height: screenSize.height * 0.75,
              color: const Color.fromRGBO(238, 224, 224, 1),
              child: GridView.count(
                controller: ScrollController(),
                crossAxisCount: 3,
                mainAxisSpacing: 50,
                crossAxisSpacing: 50,
                children: [
                  Profil(
                    name: "Bagas",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Qori",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Faid",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Fahrur",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Budi",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Jay",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Rizki",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Tohap",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Manik",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Arham",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Fikri",
                    gender: "Male",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                  Profil(
                    name: "Maharani",
                    gender: "Female",
                    age: "26",
                    exp: "5",
                    skill1: "Java",
                    skill2: "Flutter",
                    skill3: "Quarkus",
                    numSkill: "7",
                    salary: "10.000.000",
                    lastExp: "Java Developer",
                    lastPosition: "Backend Developer",
                    lastCompany: "EKSAD",
                    berapaLama: "Feb 2020 - Juni 2024",
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Profil extends StatelessWidget {
  Profil({
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (Context) {
              return const SideMenuTalentClient();
            },
          ),
        );
      },
      child: Container(
        height: 340,
        width: 310,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(5),
                    child: Text(skill1),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(5),
                    child: Text(skill2),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(5),
                    child: Text(skill3),
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
                      fontSize: 18,
                      color: Color(0xFF214B9A),
                    ),
                  ),
                  Container(
                    color: Colors.red[200],
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      "Non Negotiable",
                      style: TextStyle(color: Colors.red),
                    ),
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
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(lastCompany),
              Text(berapaLama),
            ],
          ),
        ),
      ),
    );
  }
}

class pilihan1 extends StatelessWidget {
  pilihan1({
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

class MultiLevelString {
  final String level1;

  bool isExpanded;

  MultiLevelString({
    this.level1 = "",
    this.isExpanded = false,
  });

  MultiLevelString copy({
    String? level1,
    bool? isExpanded,
  }) =>
      MultiLevelString(
        level1: level1 ?? this.level1,
        isExpanded: isExpanded ?? this.isExpanded,
      );

  @override
  String toString() => level1;
}
