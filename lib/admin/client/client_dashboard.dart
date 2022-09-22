import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/admin/client/clientControl_api.dart';

class UserControl extends StatefulWidget {
  const UserControl({Key? key}) : super(key: key);

  @override
  State<UserControl> createState() => _UserControlState();
}

class _UserControlState extends State<UserControl> {
  void apiService(BuildContext context) {
    FutureBuilder<List<dynamic>>(
        future: getUserControl(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError ||
              snapshot.data == null ||
              snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          return snapshot.data;
        });
  }

  final formKey = GlobalKey<FormState>();
  String nm = '';
  String em = '';
  String ps = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 10, 116, 255).withAlpha(60),
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                  offset: const Offset(0.0, 3.0))
            ]),
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.15,
              child: Center(
                child: Text(
                  'Data User',
                  style: GoogleFonts.poppins(
                      height: 1.5,
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent[200]),
                ),
              ),
            ),
            Container(
              height: screenSize.height * 0.6,
              child: ListView(
                controller: ScrollController(),
                children: [
                  FutureBuilder<List<dynamic>>(
                      future: getUserControl(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasError ||
                            snapshot.data == null ||
                            snapshot.connectionState ==
                                ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        }
                        return DataTable(
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            columnSpacing: 55,
                            columns: const [
                              DataColumn(
                                  label: Text(
                                "ID",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              DataColumn(
                                  label: Text(
                                "Nama User",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              // DataColumn(label: Text("Telp Rumah Sakit")),
                              DataColumn(
                                  label: Text(
                                "Email User",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              // DataColumn(label: Text("Nama PIC")),
                              // DataColumn(label: Text("Telp PIC")),
                              // DataColumn(label: Text("Email PIC")),
                              DataColumn(
                                  label: Text(
                                "STATUS",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              DataColumn(
                                  label: Text(
                                "ACTION",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                            ],
                            rows: List.generate(snapshot.data.length, (index) {
                              var pgm = snapshot.data[index];

                              final nameUserController = TextEditingController()
                                ..text = pgm['username'].toString();
                              final passwordUserController =
                                  TextEditingController(
                                      text: pgm['password'].toString());
                              final emailUserController = TextEditingController(
                                  text: pgm['email'].toString());
                              final idRoleController = TextEditingController(
                                  text: pgm['idRole'].toString());
                              // final statusController = TextEditingController(
                              //     text: pgm['status'].toString());

                              // final passwordController =
                              //     TextEditingController();

                              void viewUser(BuildContext context) {
                                var screenSize = MediaQuery.of(context).size;
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      // var pgm = snapshot.data;
                                      // print(pgm);

                                      // if (snapshot.hasError ||
                                      //     snapshot.data == null ||
                                      //     snapshot.connectionState == ConnectionState.waiting) {
                                      //   return const CircularProgressIndicator();
                                      // }
                                      return AlertDialog(
                                        content: Form(
                                            child: Container(
                                          padding: EdgeInsets.only(
                                              left: screenSize.width * 0.045,
                                              top: screenSize.height * 0.01),
                                          width: screenSize.width * 0.50,
                                          height: screenSize.height * 0.4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Spacer(),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: screenSize.width *
                                                        0.15),
                                                height: screenSize.width * 0.03,
                                                child: Image.asset(
                                                    "assets/logo/logo_protalent.png"),
                                              ),
                                              const SizedBox(height: 20),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .drive_file_rename_outline,
                                                              color: Colors
                                                                  .grey[500],
                                                              size: screenSize
                                                                      .width *
                                                                  0.01),
                                                          const SizedBox(
                                                              width: 10),
                                                          const Text(
                                                              "Nama User",
                                                              style: TextStyle(
                                                                  fontSize: 13))
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            height: 60,
                                                            width: screenSize
                                                                    .width *
                                                                0.2,
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  nameUserController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration: InputDecoration(
                                                                  labelText:
                                                                      "Nama User",
                                                                  labelStyle:
                                                                      TextStyle(
                                                                          fontSize:
                                                                              13),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0))),
                                                              readOnly: true,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Nama User tidak boleh kosong";
                                                                } else {
                                                                  return null;
                                                                }
                                                              },
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(width: 30),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .drive_file_rename_outline,
                                                            color: Colors
                                                                .grey[500],
                                                            size: screenSize
                                                                    .width *
                                                                0.01,
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          const Text(
                                                            "Password User",
                                                            style: TextStyle(
                                                                fontSize: 13),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            height: 60,
                                                            width: screenSize
                                                                    .width *
                                                                0.2,
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  passwordUserController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Password User",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                              13),
                                                                      border:
                                                                          OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.0),
                                                                      )),
                                                              readOnly: true,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Password User tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .add_home_work_sharp,
                                                            color: Colors
                                                                .grey[500],
                                                            size: screenSize
                                                                    .width *
                                                                0.01,
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          const Text(
                                                            "Email User",
                                                            style: TextStyle(
                                                                fontSize: 13),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            height: 60,
                                                            width: screenSize
                                                                    .width *
                                                                0.2,
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  emailUserController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              readOnly: true,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Email User tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Email User",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                              13),
                                                                      hintStyle:
                                                                          const TextStyle(),
                                                                      border:
                                                                          OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.0),
                                                                      )),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 30,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .email_outlined,
                                                            color: Colors
                                                                .grey[500],
                                                            size: screenSize
                                                                    .width *
                                                                0.01,
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          const Text(
                                                            "Id Role",
                                                            style: TextStyle(
                                                                fontSize: 13),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            height: 60,
                                                            width: screenSize
                                                                    .width *
                                                                0.2,
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  idRoleController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              readOnly: true,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Id Role tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Id Role",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                              13),
                                                                      hintStyle:
                                                                          const TextStyle(),
                                                                      border:
                                                                          OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.0),
                                                                      )),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )),
                                        actions: [
                                          MaterialButton(
                                              child: Text("OK"),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              })
                                        ],
                                      );
                                    });
                              }

                              return DataRow(cells: [
                                DataCell(Text(pgm['idUser'].toString())),
                                DataCell(Text(pgm['username'].toString())),
                                // DataCell(Text(pgm['noRs'].toString())),
                                DataCell(Text(pgm['email'].toString())),
                                // DataCell(Text(pgm['namaPic'].toString())),
                                // DataCell(Text(pgm['noPic'].toString())),
                                // DataCell(Text(pgm['emailPic'].toString())),
                                // DataCell(Text(pgm['idRole'].toString())),
                                DataCell(Text(pgm['status'].toString())),
                                DataCell(PopupMenuButton(
                                  icon: Icon(Icons.more_vert_outlined),
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                        child: Text("Delete"), value: 1),
                                    PopupMenuItem(child: Text("View"), value: 2)
                                  ],
                                  onSelected: (value) {
                                    if (value == 1) {
                                      print("you choose Delete...");
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text("Warning"),
                                            content: Text(
                                                "Are you sure want to delete data page ${pgm['idUser']}?"),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text("Yes"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  deletePage(pgm['idUser'])
                                                      .then((isSuccess) {
                                                    if (isSuccess) {
                                                      setState(() {});
                                                      Scaffold.of(this.context)
                                                          .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      "Delete data success")));
                                                    } else {
                                                      Scaffold.of(this.context)
                                                          .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      "Delete data failed")));
                                                    }
                                                  });
                                                },
                                              ),
                                              TextButton(
                                                child: const Text("No"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else if (value == 2) {
                                      print("you choose View...");
                                      viewUser(context);
                                    }
                                  },
                                ))
                              ]);
                            }).toList());
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
