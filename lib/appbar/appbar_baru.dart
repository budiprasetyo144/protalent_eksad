import 'package:flutter/material.dart';
import 'package:protalent_eksad/conts_warna.dart';
import 'package:protalent_eksad/widget/dropdown_appbar.dart';
import 'package:protalent_eksad/widget/botton.dart';



AppBar AppbarHomeSmall(Size screenSize) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: kPrimaryColor, width: 1, style: BorderStyle.solid),
        ),
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 1,
          ),

          Spacer(),
          Container(
            child: SizedBox(
              height: 50,
              width: 150,
              child: Image.asset("assets/logo/protalent.png"),
            ),
          ),
          Spacer(),
        ],
      ),
    ),
  );
}

AppBar AppbarHomeLarge(Size screenSize, BuildContext context, Color home,
    Color aboutUs, Color ourServices, Color career, Color contactUs) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 80,
    leadingWidth: screenSize.width * 0.3,
    leading: Row(
      children: [
        Container(
          width: screenSize.width * 0.1,
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          icon: const Image(
            image: AssetImage('assets/logo/protalent.png'),
            width: 500,
            height: 200,
          ),
          iconSize: 190,
        ),
      ],
    ),
    title: Row(
      children: [
        ButtonAppbar_baru(arah: '/', menu: 'Home', warna: home),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(arah: '/', menu: 'About Us', warna: aboutUs),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(
            arah: '/service', menu: 'Our Services', warna: ourServices),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(arah: '/career', menu: 'Career', warna: career),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar_baru(
            arah: '/contact', menu: 'Contact Us', warna: contactUs),
        const Spacer(
          flex: 2,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Text(
            'Login',
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        Container(
          width: screenSize.width * 0.006,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0xff1e5ea8),
            fixedSize: const Size(130, 45),
            onPrimary: Colors.red,
          ),
          child: const Text(
            'Register',
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
          ),
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    ),
  );
}
