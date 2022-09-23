import 'package:flutter/material.dart';
// import 'package:protalent_eksad/client/dashboard_client.dart';
// import 'package:protalent_eksad/register.dart';
//
// import 'admin/dashboard.dart';
import 'package:flutter/services.dart';
import 'package:protalent_eksad/admin/new_sidemenu.dart';
import 'package:protalent_eksad/public_baru/firebase/firebase_auth_methods.dart';
import 'package:provider/provider.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isObscure = true;

  final formKey = GlobalKey<FormState>();
  String _usmail = '';
  String _uspswd = '';
  TextEditingController _editingController = TextEditingController();
  TextEditingController _editingController2 = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginUser() {
    context.read<FirebaseAuthMethods>().loginWithEmail(
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  Widget build(BuildContext context) {
    setPageTitle('Login Protalent', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/blue_background login.jpg"),
          fit: BoxFit.fill,
        )),
        height: screenSize.height,
        width: screenSize.width,
        padding: EdgeInsets.only(
            left: screenSize.width * 0.15,
            top: screenSize.height * 0.13,
            bottom: screenSize.height * 0.13),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 10, 116, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              width: screenSize.width * 0.36,
              height: screenSize.height * 0.9,
              child: Image.asset(
                "assets/logo/eksad.jpg",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.33, top: screenSize.height * 0.07),
              child: Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                      color: const Color.fromARGB(255, 10, 116, 255),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 10, 116, 255)
                            .withAlpha(60),
                        blurRadius: 15.0,
                        spreadRadius: 20.0,
                        offset: const Offset(
                          0.0,
                          3.0,
                        ),
                      ),
                    ]),
                child: Form(
                  key: formKey,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 0.045,
                        top: screenSize.height * 0.05),
                    width: screenSize.width * 0.36,
                    height: screenSize.height * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: screenSize.width * 0.055),
                          height: screenSize.width * 0.02,
                          child: Image.asset("assets/logo/logo_protalent.png"),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.grey[500],
                              size: screenSize.width * 0.01,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Email"),
                          ],
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Container(
                          height: 60,
                          width: screenSize.width * 0.2,
                          child: TextFormField(
                            onFieldSubmitted: (String value) {
                              // if (_usmail == 'admin@admin.com' &&
                              //     _uspswd != 'administrator') {
                              //   showDialog<String>(
                              //     context: context,
                              //     builder: (BuildContext context) =>
                              //         AlertDialog(
                              //           title: const Text('Gagal login'),
                              //           content: const Text(
                              //               'Password anda salah!!!'),
                              //           actions: <Widget>[
                              //             TextButton(
                              //               onPressed: () =>
                              //                   Navigator.pop(context, 'OK'),
                              //               child: const Text('OK'),
                              //             ),
                              //           ],
                              //         ),
                              //   );
                              // } else if (_usmail == 'client@client.com' &&
                              //     _uspswd != 'clientpage') {
                              //   showDialog<String>(
                              //     context: context,
                              //     builder: (BuildContext context) =>
                              //         AlertDialog(
                              //           title: const Text('Gagal login'),
                              //           content: const Text(
                              //               'Password anda salah!!!'),
                              //           actions: <Widget>[
                              //             TextButton(
                              //               onPressed: () =>
                              //                   Navigator.pop(context, 'OK'),
                              //               child: const Text('OK'),
                              //             ),
                              //           ],
                              //         ),
                              //   );
                              // } else
                              if (formKey.currentState!.validate() &&
                                  _usmail == 'admin@admin.com' &&
                                  _uspswd == 'administrator') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (Context) {
                                      return DashboardAdmin();
                                    },
                                  ),
                                );
                              } else if (formKey.currentState!.validate() &&
                                  _usmail == 'client@client.com' &&
                                  _uspswd == 'clientpage') {
                                Navigator.pushNamed(context, '/client');
                              }

                              //   else {
                              //   showDialog<String>(
                              //     context: context,
                              //     builder: (BuildContext context) =>
                              //         AlertDialog(
                              //           title: const Text('Gagal login'),
                              //           content: const Text(
                              //               'Akun Belum terdaftar, Silahkan Registrasi'),
                              //           actions: <Widget>[
                              //             TextButton(
                              //               onPressed: () =>
                              //                   Navigator.pop(context, 'OK'),
                              //               child: const Text('OK'),
                              //             ),
                              //           ],
                              //         ),
                              //   );
                              // }
                            },
                            controller: _editingController,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              labelText: "Enter Your Email",
                              hintStyle: const TextStyle(),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                _editingController.clear();
                                return "Please enter your email address";
                              } else if (!RegExp(r'\S+@\S+\.\S+')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email address';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) => _usmail = value,
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.vpn_key_outlined,
                              color: Colors.grey[500],
                              size: screenSize.width * 0.01,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("Password"),
                          ],
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Container(
                          height: 60,
                          width: screenSize.width * 0.2,
                          child: TextFormField(
                            onFieldSubmitted: (String value) {
                              // if (_usmail == 'admin@admin.com' &&
                              //     _uspswd != 'administrator') {
                              //   showDialog<String>(
                              //     context: context,
                              //     builder: (BuildContext context) =>
                              //         AlertDialog(
                              //           title: const Text('Gagal login'),
                              //           content: const Text(
                              //               'Password anda salah!!!'),
                              //           actions: <Widget>[
                              //             TextButton(
                              //               onPressed: () =>
                              //                   Navigator.pop(context, 'OK'),
                              //               child: const Text('OK'),
                              //             ),
                              //           ],
                              //         ),
                              //   );
                              // } else if (_usmail == 'client@client.com' &&
                              //     _uspswd != 'clientpage') {
                              //   showDialog<String>(
                              //     context: context,
                              //     builder: (BuildContext context) =>
                              //         AlertDialog(
                              //           title: const Text('Gagal login'),
                              //           content: const Text(
                              //               'Password anda salah!!!'),
                              //           actions: <Widget>[
                              //             TextButton(
                              //               onPressed: () =>
                              //                   Navigator.pop(context, 'OK'),
                              //               child: const Text('OK'),
                              //             ),
                              //           ],
                              //         ),
                              //   );
                              // } else
                              if (formKey.currentState!.validate() &&
                                  _usmail == 'admin@admin.com' &&
                                  _uspswd == 'administrator') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (Context) {
                                      return DashboardAdmin();
                                    },
                                  ),
                                );
                                // Navigator.pushNamed(context, '/admin');
                              } else if (formKey.currentState!.validate() &&
                                  _usmail == 'client@client.com' &&
                                  _uspswd == 'clientpage') {
                                Navigator.pushNamed(context, '/client');
                              }

                              //   else {
                              //   showDialog<String>(
                              //     context: context,
                              //     builder: (BuildContext context) =>
                              //         AlertDialog(
                              //           title: const Text('Gagal login'),
                              //           content: const Text(
                              //               'Akun Belum terdaftar, Silahkan Registrasi'),
                              //           actions: <Widget>[
                              //             TextButton(
                              //               onPressed: () =>
                              //                   Navigator.pop(context, 'OK'),
                              //               child: const Text('OK'),
                              //             ),
                              //           ],
                              //         ),
                              //   );
                              // }
                            },
                            controller: _editingController2,
                            textAlign: TextAlign.start,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                              labelText: "Password",
                              suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                    () {
                                      _isObscure = !_isObscure;
                                    },
                                  );
                                },
                              ),
                              hintStyle: const TextStyle(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                // _editingController2.clear();
                                return 'This field is required';
                              } else if (value.trim().length < 8) {
                                return 'Password must be at least 8 characters in length';
                              }
                              return null;
                            },
                            onChanged: (value) => _uspswd = value,
                          ),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: screenSize.width * 0.08,
                              child: ElevatedButton(
                                onPressed: () {
                                  // if (_usmail == 'admin@admin.com' &&
                                  //     _uspswd != 'administrator') {
                                  //   showDialog<String>(
                                  //     context: context,
                                  //     builder: (BuildContext context) =>
                                  //         AlertDialog(
                                  //       title: const Text('Gagal login'),
                                  //       content: const Text(
                                  //           'Password anda salah!!!'),
                                  //       actions: <Widget>[
                                  //         TextButton(
                                  //           onPressed: () =>
                                  //               Navigator.pop(context, 'OK'),
                                  //           child: const Text('OK'),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   );
                                  // } else if (_usmail == 'client@client.com' &&
                                  //     _uspswd != 'clientpage') {
                                  //   showDialog<String>(
                                  //     context: context,
                                  //     builder: (BuildContext context) =>
                                  //         AlertDialog(
                                  //       title: const Text('Gagal login'),
                                  //       content: const Text(
                                  //           'Password anda salah!!!'),
                                  //       actions: <Widget>[
                                  //         TextButton(
                                  //           onPressed: () =>
                                  //               Navigator.pop(context, 'OK'),
                                  //           child: const Text('OK'),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   );
                                  // } else
                                  if (formKey.currentState!.validate() &&
                                      _usmail == 'admin@admin.com' &&
                                      _uspswd == 'administrator') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (Context) {
                                          return DashboardAdmin();
                                        },
                                      ),
                                    );
                                    // Navigator.pushNamed(context, '/admin');
                                  } else {
                                    loginUser();
                                  }
                                  // else if (formKey.currentState!.validate() &&
                                  //     _usmail == 'client@client.com' &&
                                  //     _uspswd == 'clientpage') {
                                  //   Navigator.pushNamed(context, '/client');
                                  // }
                                  //   else {
                                  //   showDialog<String>(
                                  //     context: context,
                                  //     builder: (BuildContext context) =>
                                  //         AlertDialog(
                                  //       title: const Text('Gagal login'),
                                  //       content: const Text(
                                  //           'Akun Belum terdaftar, Silahkan Registrasi'),
                                  //       actions: <Widget>[
                                  //         TextButton(
                                  //           onPressed: () =>
                                  //               Navigator.pop(context, 'OK'),
                                  //           child: const Text('OK'),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   );
                                  // }
                                },
                                child: const Text("LOGIN"),
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.04,
                            ),
                            Container(
                              height: 30,
                              width: screenSize.width * 0.08,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/register');
                                },
                                child: const Text("REGISTER"),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(
                          flex: 7,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
