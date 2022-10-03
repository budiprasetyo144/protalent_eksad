import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:protalent_eksad/public/contact_us/ContactUs.dart';
// import 'package:protalent_eksad/public_baru/career/career3.dart';
import 'package:protalent_eksad/public_baru/contact_us_baru/contact_us1.dart';
import 'package:protalent_eksad/public_baru/contact_us_baru/contact_us2.dart';
import 'package:protalent_eksad/public_small/small_contact/small_contact_us1.dart';
import 'package:protalent_eksad/public_small/small_contact/small_contact_us2.dart';
import 'package:protalent_eksad/public_small/small_footer.dart';
import 'package:protalent_eksad/widget/drawer.dart';

import '../../appbar/appbar_baru.dart';
import '../../footer.dart';
import '../../widget/responsive.dart';
import '../../widget/whatsapp.dart';
import 'package:flutter/services.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class ContactUs_baru extends StatefulWidget {
  const ContactUs_baru({Key? key}) : super(key: key);

  @override
  State<ContactUs_baru> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs_baru> {
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
    setPageTitle('Contact Us', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        appBar: _showAppbar
            ? ResponsiveWidget.isSmallScreen(context)
                ? AppBarKecil()
                : AppbarHomeLarge(screenSize, context, Colors.black,
                    Colors.black, Colors.black, Colors.black, Colors.blue)
            : PreferredSize(
                child: Container(),
                preferredSize: Size(0.0, 0.0),
              ),
        drawer: DrawerProtalent(),
        body: ResponsiveWidget.isSmallScreen(context)
            ? ListView(
                controller: controller2,
                children: [
                  const ContactUs1_small(),
                  ContactUs2_small(),
                  const FooterSmall(),
                ],
              )
            : ListView(
                controller: controller2,
                children: [
                  const ContactUs1(),
                  ContactUs2(),
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
          child: Image.asset("assets/logo/logo_protalent.png"),
        ),
      ),

      // ),
    );
  }
}
