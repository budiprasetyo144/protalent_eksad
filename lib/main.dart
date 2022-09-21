import 'package:flutter/material.dart';
import 'package:protalent_eksad/admin/dashboard/desc_talent.dart';
import 'package:protalent_eksad/admin/new_sidemenu.dart';
import 'package:protalent_eksad/client/dashboard_client.dart';
import 'package:protalent_eksad/homepage_new.dart';
import 'package:protalent_eksad/login.dart';
import 'package:protalent_eksad/public_baru/career/career.dart';
import 'package:protalent_eksad/public_baru/contact_us_baru/contact_us_baru.dart';
import 'package:protalent_eksad/public_baru/our_services/our_services.dart';
import 'package:protalent_eksad/register.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
   configureApp();
  runApp(const MyApp());
}

 void configureApp() {
   setUrlStrategy(PathUrlStrategy());
 }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Protalent by Eksad",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePageNew(),
        '/about': (context) => const HomePageNew(),
        '/career': (context) => const Career(),
        '/service': (context) => const OurServices(),
        '/contact': (context) => const ContactUs_baru(),
        '/login': (context) => const login(),
        '/register': (context) => const Register(),
        //'/admin': (context) => const DashboardAdmin(),
        '/client': (context) => const DashboardClient(),
        //'/talent': (context) => const SelectTalent()
      },

      //home: Scaffold(
      // body: HomePageNew(),
      //),
    );
  }
}
