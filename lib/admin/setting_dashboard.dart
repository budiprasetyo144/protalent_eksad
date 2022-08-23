import 'package:flutter/material.dart';
import 'package:protalent_eksad/login.dart';
import '../widget/botton.dart';
import 'package:google_fonts/google_fonts.dart';

// class SettingDashboard extends StatelessWidget {
//   const SettingDashboard({Key? key}) : super(key: key);

// }

class SettingDashboard extends StatefulWidget {
  const SettingDashboard({super.key});

  @override
  State<SettingDashboard> createState() => _SettingDashboardState();
}

class _SettingDashboardState extends State<SettingDashboard> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenSize1 = screenSize.width * 0.6;
    return Container(
      color: const Color.fromRGBO(238, 224, 224, 1),
      height: 1000,
      padding: const EdgeInsets.only(left: 100),
      width: screenSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "General Setting",
            textAlign: TextAlign.start,
            style: GoogleFonts.didactGothic(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Container(
            color: Colors.white,
            height: 600,
            width: 1100,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Site Profile",
                        style: GoogleFonts.didactGothic(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                    // SizedBox(
                    //   height: 0,
                    //   width: 820,
                    // ),
                    Botton_tombol(
                      title: "Save Setting",
                      arah: const login(),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  // indent: 20,
                  // endIndent: 0,
                  color: Colors.grey,
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Container(
                      height: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Site icon",
                            style: GoogleFonts.didactGothic(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            child:
                                Image.asset("assets/logo/logo_protalent.png"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 30,
                              width: 100,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    primary: Colors.white,
                                    // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                                  ),
                                  child: const Text(
                                    "Change",
                                    style: TextStyle(color: Colors.black),
                                  ))),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 30,
                              width: 100,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    primary: Colors.white,
                                    // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                                  ),
                                  child: const Text(
                                    "Remove",
                                    style: TextStyle(color: Colors.red),
                                  )))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),
                    Container(
                      height: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Site title",
                            style: GoogleFonts.didactGothic(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: screenSize1 * 0.5,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  labelText: "Protalent",
                                  hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey))),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Site tagline",
                            style: GoogleFonts.didactGothic(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: screenSize1 * 0.5,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  labelText: "Talent Ready from Eksad",
                                  hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey))),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              "In a few words, explain what this site is about.",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.didactGothic(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                  width: 0,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Email address",
                          style: GoogleFonts.didactGothic(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: screenSize1 * 0.5,
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey[200],
                                labelText: "xxxxxx@eksad.com",
                                hintStyle: const TextStyle(),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey))),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "No Office",
                          style: GoogleFonts.didactGothic(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: screenSize1 * 0.5,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: "02x-xxxx-xxxx",
                                hintStyle: TextStyle(),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey))),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    // Column(
                    //   crossAxisAlignment:CrossAxisAlignment.start,
                    //   mainAxisAlignment:MainAxisAlignment.start,
                    //   children: [

                    //     SizedBox(height: 40,),
                    //     Container(
                    //           height: 50,
                    //           width: screenSize1*0.5,
                    //           child: ElevatedButton(
                    //               onPressed: () {},
                    //               style: ElevatedButton.styleFrom(
                    //                 shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(5),
                    //                 ),
                    //                 primary: Colors.white70,
                    //                 // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    //               ),
                    //               child: Row(
                    //                 children: [
                    //                   Icon(Icons.add,color: Colors.black,),
                    //                   SizedBox(width: 10,),
                    //                   Text(

                    //                     "Add custom address",
                    //                     style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),
                    //                   ),
                    //                 ],
                    //               ))),
                    //     SizedBox(height: 40,),

                    //     Container(
                    //           height: 50,
                    //           width: screenSize1*0.5,
                    //           child: ElevatedButton(
                    //               onPressed: () {},
                    //               style: ElevatedButton.styleFrom(
                    //                 shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(5),
                    //                 ),
                    //                 primary: Colors.white70,
                    //                 // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    //               ),
                    //               child: Row(
                    //                 children: [
                    //                   Icon(Icons.add,color: Colors.black,),
                    //                   SizedBox(width: 10,),
                    //                   Text(
                    //                     "Add Number",
                    //                     style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),
                    //                   ),
                    //                 ],
                    //               )))
                    //   ],
                    // ),
                  ],
                ),
                Row(
                  children: [
                    // Container(
                    //     height: 30,
                    //     width: 200,
                    //     child: ElevatedButton(
                    //         onPressed: () {},
                    //         style: ElevatedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(5),
                    //           ),
                    //           primary: Colors.white,
                    //           // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    //         ),
                    //         child: Text(
                    //           "+ Add custom address",
                    //           style: TextStyle(color: Colors.black),
                    //         ))),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                      width: 0,
                    ),
                    Spacer(
                      flex: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Container(
                    //     height: 30,
                    //     width: 200,
                    //     child: ElevatedButton(
                    //         onPressed: () {},
                    //         style: ElevatedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(5),
                    //           ),
                    //           primary: Colors.white,
                    //           // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    //         ),
                    //         child: Text(
                    //           "+ Add Number",
                    //           style: TextStyle(color: Colors.black),
                    //         ))),
                  ],
                ),
                const Spacer(
                  flex: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
