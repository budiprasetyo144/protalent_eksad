import 'package:flutter/material.dart';
import 'package:protalent_eksad/api/user_api.dart';
import 'package:protalent_eksad/firebase/firebase_auth_methods.dart';
import 'package:provider/provider.dart';
// import 'package:protalent_eksad/login.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

void setPageTitle(String title, BuildContext context) {
  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: title,
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;

  final formKey = GlobalKey<FormState>();
  // String _usname = '';
  // String _usmail = '';
  // String _uspswd = '';
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUpUser() async {
    context.read<FirebaseAuthMethods>().signUpWithEmail(
          username: usernameController.text,
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
    signUp(usernameController.value.text, emailController.value.text,
        passwordController.value.text);
  }

  // void chat({
  //   required final int phone,
  //   required String message,
  // }) async {
  //   String url() {
  //     return "https://api.whatsapp.com/send?phone=$phone&text=${Uri.parse(message)}";
  //   }

  //   if (await canLaunch(url())) {
  //     await launch(url());
  //   } else {
  //     throw 'Could not launch ${url()}';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    setPageTitle('Register Protalent', context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/blue_background login.jpg"),
            fit: BoxFit.fill,
          ),
        ),
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
                          flex: 2,
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
                            const Text("Nama"),
                          ],
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: screenSize.width * 0.2,
                              child: TextFormField(
                                controller: usernameController,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  labelText: "Username",
                                  hintStyle: const TextStyle(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const Spacer(
                          flex: 2,
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
                            decoration: InputDecoration(
                              labelText: "Email",
                              hintStyle: const TextStyle(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "";
                              }
                              return null;
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
                              if (value == null || value.isEmpty) {
                                return "";
                              }
                              return null;
                            },
                          ),
                        ),
                        const Spacer(
                          flex: 4,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: screenSize.width * 0.09,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: const Text("LOGIN"),
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.02,
                            ),
                            Container(
                              height: 30,
                              width: screenSize.width * 0.09,
                              child: ElevatedButton(
                                onPressed: signUpUser,
                                child: const Text('REGISTER'),
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
