import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  bool _showAppbar = true;
  ScrollController controller2 = new ScrollController();
  bool _show = true;
  bool isScrollingDown = false;

  @override
  void initState() {
    super.initState();
    myScroll();
  }

  @override
  void dispose() {
    super.dispose();
    controller2.removeListener(() {});
    super.dispose();
  }

  void showBottomBar() {
    setState(() {
      _show = true;
    });
  }

  void hideBottomBar() {
    setState(() {
      _show = false;
    });
  }

  void myScroll() async {
    controller2.addListener(() {
      if (controller2.position.userScrollDirection == ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          hideBottomBar();
        }
      }
      if (controller2.position.userScrollDirection == ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          showBottomBar();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setPageTitle('Career Protalent', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        appBar: _showAppbar
            ? ResponsiveWidget.isSmallScreen(context)
                ? AppBarKecil()
                : AppbarHomeLarge(screenSize, context, Colors.black,
                    Colors.black, Colors.black, Colors.blue, Colors.black)
            : PreferredSize(
                child: Container(),
                preferredSize: Size(0.0, 0.0),
              ),
        drawer: DrawerProtalent(),
        body: ResponsiveWidget.isSmallScreen(context)
            ? ListView(
                controller: controller2,
                children: const <Widget>[
                  Career1_small(),
                  Career2_small(),
                  Career3_small(),
                  Career4_small(),
                  FooterSmall(),
                ],
              )
            : ListView(
                controller: controller2,
                children: <Widget>[
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
