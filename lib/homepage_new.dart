import 'package:flutter/material.dart';
import 'package:protalent_eksad/footer.dart';
// import 'package:protalent_eksad/public/home/home4.dart';
import 'package:protalent_eksad/public_baru/contact_us_baru/contact_us2.dart';
import 'package:protalent_eksad/public_baru/home/home1_new.dart';
import 'package:protalent_eksad/public_baru/home/home2_new.dart';
import 'package:protalent_eksad/public_baru/home/home3_new.dart';
import 'package:protalent_eksad/public_baru/home/home4_new.dart';
import 'package:protalent_eksad/public_small/small_home/small_home1.dart';
import 'package:protalent_eksad/public_small/small_home/small_home2.dart';
import 'package:protalent_eksad/public_small/small_home/small_home3.dart';
import 'package:protalent_eksad/widget/whatsapp.dart';
import '../appbar/appbar_baru.dart';

import '../widget/responsive.dart';
import 'package:flutter/services.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class HomePageNew extends StatefulWidget {
  const HomePageNew({Key? key}) : super(key: key);

  @override
  State<HomePageNew> createState() => _HomePageNewState();
}

class _HomePageNewState extends State<HomePageNew> {
  @override
  Widget build(BuildContext context) {
    setPageTitle('Protalent by Eksad', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: WAChat(),
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarHomeSmall(screenSize)
          : AppbarHomeLarge(screenSize, context, Colors.blue, Colors.blue,
              Colors.black, Colors.black, Colors.black),
      body: ResponsiveWidget.isSmallScreen(context)
     ? ListView(
        children: [
          HomeSmall1(),
          HomeSmall2(),
          HomeSmall3(),
          //const HomeNew1(),
          // const HomeNew2(),
          // const HomeNew3(),
          const HomeNew4(),
          ContactUs2(),
          const Footer(),
        ],
      )
        : ListView(
        children: [
          const HomeNew1(),
          const HomeNew2(),
          const HomeNew3(),
          const HomeNew4(),
          ContactUs2(),
          const Footer(),
        ],
      )
    );
  }
}
