import 'package:flutter/material.dart';
import 'package:protalent_eksad/admin/talent_manage/sidebar/Industry.dart';
import 'package:protalent_eksad/admin/talent_manage/sidebar/briefly.dart';
import 'package:protalent_eksad/admin/talent_manage/sidebar/contract.dart';
import 'package:protalent_eksad/admin/talent_manage/sidebar/education.dart';
import 'package:protalent_eksad/admin/talent_manage/sidebar/level.dart';
import 'package:protalent_eksad/admin/talent_manage/sidebar/location.dart';
import 'package:protalent_eksad/admin/talent_manage/sidebar/skills.dart';
import 'package:side_navigation/side_navigation.dart';

class EditTalent extends StatefulWidget {
  const EditTalent({Key? key}) : super(key: key);

  @override
  State<EditTalent> createState() => _EditTalentState();
}

Container _container(String judul) {
  return Container(
    child: Text(judul),
  );
}

class _EditTalentState extends State<EditTalent> {
  //briefly, contract, education, industry, level, location, skill
  List<Widget> views = [
    EditBriefly(),
    EditContract(),
    EditEducation(),
    EditIndustry(),
    EditLevel(),
    EditLocation(),
    EditSkill()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 224, 224, 1),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  border: Border.all(color: Colors.black),
                ),
                width: 1200,
                height: 592,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 18, 108, 178),
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),

                        //borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                      ),
                      padding: const EdgeInsets.only(top: 27, left: 35),
                      height: 95,
                      width: 1200,
                      child: const Text(
                        'Edit Talent',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ),
                    Container(
                      height: 495,
                      child: Row(
                        children: [
                          SideNavigationBar(
                            expandable: false,
                            //header: SideNavigationBarHeader(image: , title: title, subtitle: subtitle),
                            selectedIndex: selectedIndex,
                            items: const [
                              //position , skill , level , industry, location
                              SideNavigationBarItem(
                                icon: Icons.badge_sharp,
                                label: 'Briefly',
                              ),
                              SideNavigationBarItem(
                                icon: Icons.browser_updated,
                                label: 'Skill',
                              ),
                              SideNavigationBarItem(
                                icon: Icons.leaderboard,
                                label: 'Level',
                              ),
                              SideNavigationBarItem(
                                icon: Icons.home_work_outlined,
                                label: 'Industry',
                              ),
                              SideNavigationBarItem(
                                icon: Icons.location_on,
                                label: 'Location',
                              ),
                              SideNavigationBarItem(
                                icon: Icons.grade_rounded,
                                label: 'Education',
                              ),
                              SideNavigationBarItem(
                                icon: Icons.document_scanner,
                                label: 'Contract',
                              ),
                            ],
                            onTap: (index) {
                              setState(
                                () {
                                  selectedIndex = index;
                                },
                              );
                            },
                            theme: SideNavigationBarTheme(
                              // backgroundColor: Color.fromARGB(200, 9, 47, 171),
                              backgroundColor:
                                  const Color.fromARGB(255, 18, 108, 178),
                              togglerTheme: const SideNavigationBarTogglerTheme(
                                  shrinkIconColor: Colors.white,
                                  expandIconColor: Colors.white),
                              itemTheme: const SideNavigationBarItemTheme(
                                  selectedItemColor: Colors.white),
                              dividerTheme:
                                  SideNavigationBarDividerTheme.standard(),
                            ),
                          ),
                          Expanded(
                            child: views.elementAt(selectedIndex),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
