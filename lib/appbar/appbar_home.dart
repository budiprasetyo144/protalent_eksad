import 'package:flutter/material.dart';
import 'package:protalent_eksad/admin/dashboard.dart';
import 'package:protalent_eksad/conts_warna.dart';
import 'package:protalent_eksad/homepage.dart';
import 'package:protalent_eksad/public/contact_us/ContactUs.dart';
import 'package:protalent_eksad/public/our_talent/our_talent.dart';
import 'package:protalent_eksad/public_baru/career/career.dart';
import 'package:protalent_eksad/register.dart';
// import 'package:protalent_eksad/login.dart';
import 'package:protalent_eksad/widget/dropdown_appbar.dart';
import 'package:protalent_eksad/widget/botton.dart';
// import 'package:protalent_eksad/public/post/post.dart';

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
          Container(
            child: SizedBox(
              height: 50,
              width: 150,
              child: Image.asset("assets/logo/logo_protalent.png"),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          const SizedBox(
            height: 50,
            width: 150,
            child: DropDownHome(),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    ),
  );
}

AppBar AppbarHomeLarge(Size screenSize, BuildContext context, Color home,
    Color ourTalent, Color career, Color contactUs) {
  return AppBar(
    backgroundColor: Colors.white,
    toolbarHeight: 80,
    leadingWidth: screenSize.width * 0.15,
    leading: Row(
      children: [
        Container(
          width: screenSize.width * 0.015,
        ),
        Container(
          width: screenSize.width * 0.13,
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/logo/logo_protalent.png'),
                fit: BoxFit.fill),
          ),
        ),
      ],
    ),
    title: Row(
      children: [
        const Spacer(
          flex: 4,
        ),
        ButtonAppbar(arah: const HomePage(), menu: 'Home', warna: home),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar(
            arah: const OurTalent(), menu: 'Our Talent', warna: ourTalent),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar(arah: const Career(), menu: 'Career', warna: career),
        const Spacer(
          flex: 1,
        ),
        ButtonAppbar(
            arah: const ContactUs(), menu: 'Contact Us', warna: contactUs),
        const Spacer(
          flex: 3,
        ),
      ],
    ),
    actions: [
      Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ),
              );
            },
            child: const Text(
              'Login',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            width: screenSize.width * 0.006,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Register()));
            },
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 0, 17, 255)),
            child: const Text(
              'Register',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            width: screenSize.width * 0.02,
          )
        ],
      )
    ],
  );
}
