import 'package:flutter/material.dart';

import 'package:protalent_eksad/conts_warna.dart';

class DropDownHome extends StatefulWidget {
  const DropDownHome({Key? key}) : super(key: key);

  @override
  State<DropDownHome> createState() => _DropDownHomeState();
}

class _DropDownHomeState extends State<DropDownHome> {
  String dropdownvalue = 'Home';

  var items = [
    'Home',
    'About Us',
    'Our Service',
    'Career',
    'Contact Us',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              underline: Container(color: Colors.transparent),
              value: dropdownvalue,
              icon: const Icon(Icons.list),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Container(
                    child: Text(
                      items,
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kTextColor),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
