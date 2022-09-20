import 'package:flutter/material.dart';
import 'package:protalent_eksad/public_baru/career/career2.dart';
import 'package:protalent_eksad/public_baru/career/career3.dart';
import 'package:protalent_eksad/public_small/small_career/small_career1.dart';
import 'package:protalent_eksad/public_small/small_career/small_career2.dart';
import 'package:protalent_eksad/public_small/small_career/small_career3.dart';
import 'package:protalent_eksad/public_small/small_career/small_career4.dart';
import 'package:protalent_eksad/public_small/small_footer.dart';
import 'package:protalent_eksad/widget/drawer.dart';

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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    setPageTitle('Career Protalent', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBarKecil()
            : AppbarHomeLarge(screenSize, context, Colors.black, Colors.black,
                Colors.black, Colors.blue, Colors.black),
        drawer: DrawerProtalent(),
        body: ResponsiveWidget.isSmallScreen(context)
            ? ListView(
                children: const [
                  Career1_small(),
                  Career2_small(),
                  Career3_small(),
                  Career4_small(),
                  FooterSmall(),
                ],
              )
            : ListView(
                children:  [
                  const Career1(),
                  const Career1_2(),
                  const Career2(),
                  const Career3(),
                  Footer(),
                ],
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: WAChat());
  }

  AppBar AppBarKecil() {
    return AppBar(
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        icon: Icon(
          Icons.list_outlined,
          size: 30,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Container(
        child: SizedBox(
          height: 50,
          width: 150,
          child: Image.asset("assets/logo/protalent.png"),
        ),
      ),
    );
  }
}
