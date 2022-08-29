import 'package:flutter/material.dart';
// import 'package:protalent_eksad/login.dart';
// import 'package:protalent_eksad/widget/botton.dart';

AppBar BarAtas(BuildContext context) {
  return AppBar(
    //backgroundColor: Color.fromARGB(200, 9, 47, 171),
    backgroundColor: Colors.white,
    leading: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/logo/logo_protalent.png'),
            fit: BoxFit.fill),
      ),
    ),
    leadingWidth: 230,
    actions: [
      Row(
        children: [
          //AlertForm(),
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
              Navigator.popAndPushNamed(context, '/login');
            },
            icon: const Icon(
              Icons.output,
            ),
            label: const Text(
              'Logout',
              style: TextStyle(),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_pin,
              color: Colors.blue,
            ),
            iconSize: 40,
          )
        ],
      ),
    ],
  );
}
