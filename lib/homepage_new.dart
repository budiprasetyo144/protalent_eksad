import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:protalent_eksad/api/setting_api.dart';
import 'package:protalent_eksad/footer.dart';
import 'package:protalent_eksad/conts_warna.dart';
import 'package:protalent_eksad/public_baru/contact_us_baru/contact_us2.dart';
import 'package:protalent_eksad/public_baru/home/home1_new.dart';
import 'package:protalent_eksad/public_baru/home/home2_new.dart';
import 'package:protalent_eksad/public_baru/home/home3_new.dart';
import 'package:protalent_eksad/public_baru/home/home4_new.dart';
import 'package:protalent_eksad/public_small/small_contact/small_contact_us2.dart';
import 'package:protalent_eksad/public_small/small_footer.dart';
import 'package:protalent_eksad/public_small/small_home/small_home1.dart';
import 'package:protalent_eksad/public_small/small_home/small_home2.dart';
import 'package:protalent_eksad/public_small/small_home/small_home3.dart';
import 'package:protalent_eksad/public_small/small_home/small_home4.dart';
import 'package:protalent_eksad/widget/drawer.dart';
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
    //setPageTitle('Protalent by Eksad', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: WAChat(),
      appBar: _showAppbar
          ? ResponsiveWidget.isSmallScreen(context)
              ? AppBarKecil()
              : AppbarHomeLarge(screenSize, context, Colors.blue, Colors.blue,
                  Colors.black, Colors.black, Colors.black)
          : PreferredSize(
              child: Container(),
              preferredSize: Size(0.0, 0.0),
            ),
      drawer: DrawerProtalent(),
      body: ResponsiveWidget.isSmallScreen(context)
          ? ListView(
              controller: controller2,
              children: <Widget> [
                HomeSmall1(),
                HomeSmall2(),
                HomeSmall3(),
                HomeSmall4(),
                ContactUs2_small(),
                const FooterSmall(),
              ],
            )
          : FutureBuilder<dynamic>(
              future: getSettingTitle(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                var pgm = snapshot.data[0];
                return Title(
                  title: pgm['title'],
                  color: Colors.white,
                  child: ListView(
                    controller: controller2,
                    children: <Widget> [
                      const HomeNew1(),
                      const HomeNew2(),
                      const HomeNew3(),
                      const HomeNew4(),
                      ContactUs2(),
                      Footer(),
                    ],
                  ),
                );
              },
            ),
    );
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

      // ),
    );
  }
}
