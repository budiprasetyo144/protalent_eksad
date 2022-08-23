import 'package:flutter/material.dart';
import 'package:protalent_eksad/footer.dart';
import 'package:protalent_eksad/public/home/home1.dart';
// import 'package:protalent_eksad/public/home/home2.dart';
import 'package:protalent_eksad/public/home/home3.dart';
// import 'package:protalent_eksad/public/home/home4.dart';
import 'package:protalent_eksad/appbar/appbar_baru.dart';
import 'package:protalent_eksad/widget/responsive.dart';
import 'package:protalent_eksad/widget/whatsapp.dart';
import 'package:protalent_eksad/public_baru/home/home2_new.dart';
// import 'package:protalent_eksad/public_baru/home/home4_new.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppbarHomeSmall(screenSize)
            : AppbarHomeLarge(screenSize, context, Colors.blue, Colors.black,
                Colors.black, Colors.black, Colors.black),
        body: ListView(
          children: const [
            Home1(),
            HomeNew2(),
            Home3(),
            Footer(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat());
  }
}
