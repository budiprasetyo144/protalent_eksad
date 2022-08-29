import 'package:flutter/material.dart';
import 'package:protalent_eksad/public_baru/career/career2.dart';
import 'package:protalent_eksad/public_baru/career/career3.dart';

import '../../appbar/appbar_baru.dart';
import '../../footer.dart';
import '../../widget/responsive.dart';
import '../../widget/whatsapp.dart';
import 'career1.dart';
import 'career1_2.dart';
import 'package:flutter/services.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class Career extends StatefulWidget {
  const Career({Key? key}) : super(key: key);

  @override
  State<Career> createState() => _CareerState();
}

class _CareerState extends State<Career> {
  @override
  Widget build(BuildContext context) {
    setPageTitle('Career Protalent', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppbarHomeSmall(screenSize)
            : AppbarHomeLarge(screenSize, context, Colors.black, Colors.black,
                Colors.black, Colors.blue, Colors.black),
        body: ResponsiveWidget.isSmallScreen(context)
        ? ListView(
          children: const [
            Career1(),
            Career1_2(),
            Career2(),
            Career3(),
            Footer(),
          ],
        )
        : ListView(
        children: const [
          Career1(),
          Career1_2(),
          Career2(),
          Career3(),
          Footer(),
    ],
    ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat());
  }
}
