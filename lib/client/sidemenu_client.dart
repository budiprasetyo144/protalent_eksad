import 'package:flutter/material.dart';
import 'package:protalent_eksad/client/find_talent.dart';
import 'package:protalent_eksad/client/hired_talent.dart';
import 'package:protalent_eksad/client/my_employee.dart';
import 'package:side_navigation/side_navigation.dart';

class SideClient extends StatefulWidget {
  const SideClient({Key? key}) : super(key: key);

  @override
  State<SideClient> createState() => _SideClientState();
}

class _SideClientState extends State<SideClient> {
  // script untuk mengatur navigation menu client
  List<Widget> views = [
    const FindTalent(),
    const HiredTalent(),
    const MyEmployee()
  ];
  // ==============================================================
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigationBar(
            header: SideNavigationBarHeader(
              image: const CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person_pin,
                  size: 20,
                ),
              ),
              title: Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  'Fahrur Huzain',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Container(),
              // subtitle: Text(
              //   'Admin Eksad',
              //   style: TextStyle(color: Colors.white),
              // ),
            ),
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.person_search,
                label: 'Find Talent',
              ),
              SideNavigationBarItem(
                icon: Icons.note_outlined,
                label: 'Hired Talent',
              ),
              SideNavigationBarItem(
                icon: Icons.settings_applications,
                label: 'My Employee',
              ),
            ],
            onTap: (index) {
              setState(
                () {
                  selectedIndex = index;
                },
              );
            },
            // Change the background color and disabled header/footer dividers
            // Make use of standard() constructor for other themes
            theme: SideNavigationBarTheme(
              backgroundColor:
                  //Color.fromARGB(200, 9, 47, 171),
                  const Color.fromARGB(255, 18, 108, 178),
              togglerTheme: const SideNavigationBarTogglerTheme(
                  shrinkIconColor: Colors.white, expandIconColor: Colors.white),
              itemTheme: const SideNavigationBarItemTheme(
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white60),
              dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
