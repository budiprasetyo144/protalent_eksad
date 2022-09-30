import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/admin/dashboard/desc_talent.dart';
import 'package:protalent_eksad/admin/master_data/master_data.dart';
import 'package:protalent_eksad/admin/talentManagement/talentManagement.dart';
import 'package:protalent_eksad/client/find_talent.dart';

import 'package:protalent_eksad/client/hired_talent.dart';
import 'package:protalent_eksad/client/my_employee.dart';
import 'package:protalent_eksad/firebase/firebase_auth_methods.dart';
import 'package:provider/provider.dart';

class DashboardClientNew extends StatefulWidget {
  const DashboardClientNew({Key? key}) : super(key: key);

  @override
  State<DashboardClientNew> createState() => _DashboardClientNewState();
}

class _DashboardClientNewState extends State<DashboardClientNew> {
  PageController page = PageController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) * 2;
    final double itemWidth = size.width / 1.65;
    final user = context.read<FirebaseAuthMethods>().user;
    final String mail = user.email!;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leadingWidth: 230,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          child: Container(
            width: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logo/protalent.png'),
                    fit: BoxFit.fill)),
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(
              Icons.remove_red_eye,
            ),
            label: const Text(
              'Site Online',
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            icon: const Icon(
              Icons.output,
            ),
            label: const Text(
              'Logout',
              style: TextStyle(),
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            showToggle: true,
            controller: page,
            // onDisplayModeChanged: (mode) {
            //   print(mode);
            // },
            style: SideMenuStyle(
              openSideMenuWidth: 220,
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.blue[50],
              selectedColor: Colors.blue[100],
              selectedTitleTextStyle: const TextStyle(color: Colors.black),
              selectedIconColor: Colors.black,
              unselectedIconColor: Colors.black87,
              unselectedTitleTextStyle: const TextStyle(color: Colors.black87),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              backgroundColor: Colors.blueAccent[200],
            ),
            title: Column(
              children: [
                Container(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Welcome,\n$mail',
                    style: GoogleFonts.poppins(fontSize: 17),
                  ),
                ),
                Container(
                  height: 20,
                )
              ],
            ),
            footer: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Protalent By Eksad',
                style: TextStyle(fontSize: 15),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Find Talent',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(Icons.home),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Hired Talent',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: const Icon(Icons.settings),
              ),
              SideMenuItem(
                priority: 2,
                title: 'My Employee',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: const Icon(Icons.file_copy),
              ),
              SideMenuItem(
                priority: 3,
                title: 'Master Data',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: const Icon(Icons.table_rows),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Talent Management',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: const Icon(Icons.person),
              ),

            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                FindTalent(gridTalent: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  controller: ScrollController(),
                  crossAxisCount: 3,
                  mainAxisSpacing: 50,
                  crossAxisSpacing: 50,
                  children: [
                    GestureDetector(
                      onTap:(){
                        jumpDetailTalent();
                    },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap:(){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap:(){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap:(){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap:(){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap:(){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap: (){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap: (){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap: (){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap: (){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap: (){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                    GestureDetector(
                      onTap: (){
                        jumpDetailTalent();
                      },
                      child: Profil(
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
                    ),
                  ],
                ),
                ),
                HiredTalent(),
                MyEmployee(),
                MasterData(),
                TalentManagements(),
                SelectTalent()

              ],
            ),
          ),
        ],
      ),
    );
  }

  void jumpDetailTalent() => page.jumpToPage(5);
}

