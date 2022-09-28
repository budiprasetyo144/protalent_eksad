import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:protalent_eksad/admin/new_sidemenu.dart';
import 'package:provider/provider.dart';

import 'firebase/firebase_auth_methods.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;

  final formKey = GlobalKey<FormState>();
  // final TextEditingController _usernamecontroller = TextEditingController();
  // final TextEditingController _passwordcontroller = TextEditingController();
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
      body: Stack(
        children: [
          Container(
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
                      left: screenSize.width * 0.33,
                      top: screenSize.height * 0.07),
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
                              padding: EdgeInsets.only(
                                  left: screenSize.width * 0.055),
                              height: screenSize.width * 0.02,
                              child:
                                  Image.asset("assets/logo/logo_protalent.png"),
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
                              height: 40,
                              width: screenSize.width * 0.2,
                              child: TextFormField(
                                controller: emailController,
                                textAlign: TextAlign.start,
                                onFieldSubmitted: (String value) {
                                  if (emailController.value.text ==
                                      'admin@admin.com' &&
                                      passwordController.value.text ==
                                          'administrator') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashboardAdmin(),
                                      ),
                                    );
                                  } else {
                                    loginUser();
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "Enter Your Email",
                                  hintStyle: const TextStyle(),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    emailController.clear();
                                    return "please enter your email address";
                                  } else if (!RegExp(r'\S+@\S+\.\S+')
                                      .hasMatch(value)) {
                                    return 'Please enter a valid email address';
                                  } else {
                                    return null;
                                  }
                                },
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
                              height: 40,
                              width: screenSize.width * 0.2,
                              child: TextFormField(
                                controller: passwordController,
                                onFieldSubmitted: (String value) {
                                  if (emailController.value.text ==
                                      'admin@admin.com' &&
                                      passwordController.value.text ==
                                          'administrator') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashboardAdmin(),
                                      ),
                                    );
                                  } else {
                                    loginUser();
                                  }
                                },
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
                                    passwordController.clear();
                                    return 'This field is required';
                                  } else if (value.trim().length < 8) {
                                    return 'Password must be at least 8 characters in length';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/reset_password');
                                    },
                                    child: Text('Forgot Password?')),
                                SizedBox(
                                  width: 52,
                                )
                              ],
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: screenSize.width * 0.08,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (emailController.value.text ==
                                              'admin@admin.com' &&
                                          passwordController.value.text ==
                                              'administrator') {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DashboardAdmin(),
                                          ),
                                        );
                                      } else {
                                        loginUser();
                                      }

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
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Icon(Icons.arrow_back)),
          ),
        ],
      ),
    );
  }
}
