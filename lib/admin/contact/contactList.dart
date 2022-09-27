import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/admin/client/clientControl_api.dart';
import 'package:protalent_eksad/admin/contact/contactList_api.dart';

class contactList extends StatefulWidget {
  const contactList({Key? key}) : super(key: key);

  @override
  State<contactList> createState() => _contactListState();
}

class _contactListState extends State<contactList> {
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
                  'Contact List',
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
                      future: getContactList(),
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
                                "Date",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              DataColumn(
                                  label: Text(
                                "Nama",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              // DataColumn(label: Text("Telp Rumah Sakit")),
                              DataColumn(
                                  label: Text(
                                "Phone",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              // DataColumn(label: Text("Nama PIC")),
                              // DataColumn(label: Text("Telp PIC")),
                              // DataColumn(label: Text("Email PIC")),
                              DataColumn(
                                  label: Text(
                                "Email",
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

                              final namaContactController =
                                  TextEditingController()
                                    ..text = pgm['namaContact'].toString();
                              final emailContactUserController =
                                  TextEditingController(
                                      text: pgm['emailContact'].toString());
                              final noHpController = TextEditingController(
                                  text: pgm['noHp'].toString());
                              final messageContactController =
                                  TextEditingController(
                                      text: pgm['messageContact'].toString());
                              final dateContactController =
                                  TextEditingController(
                                      text: pgm['dateContact'].toString());
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
                                          height: screenSize.height * 0.52,
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
                                                              "Nama Contact",
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
                                                                  namaContactController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration: InputDecoration(
                                                                  labelText:
                                                                      "Nama Contact",
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
                                                                  return "Nama Contact tidak boleh kosong";
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
                                                            FontAwesomeIcons
                                                                .mailBulk,
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
                                                            "Email Contact",
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
                                                                  emailContactUserController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Email Contact",
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
                                                                  return "Email Contact tidak boleh kosong";
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
                                                                .phone_android,
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
                                                            "No Hp",
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
                                                                  noHpController,
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
                                                                  return "No Hp tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "No Hp",
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
                                                                .date_range,
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
                                                            "Date Contact",
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
                                                                  dateContactController,
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
                                                                  return "Date Contact tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Date Contact",
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
                                                                .message,
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
                                                            "Message Contact",
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
                                                            height: 120,
                                                            width: screenSize
                                                                    .width *
                                                                0.42,
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  messageContactController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              readOnly: true,
                                                              maxLines: 5,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Message Contact tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Message Contact",
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
                                DataCell(Text(pgm['dateContact'].toString())),
                                DataCell(Text(pgm['namaContact'].toString())),
                                // DataCell(Text(pgm['noRs'].toString())),
                                DataCell(Text(pgm['noHp'].toString())),
                                // DataCell(Text(pgm['namaPic'].toString())),
                                // DataCell(Text(pgm['noPic'].toString())),
                                // DataCell(Text(pgm['emailPic'].toString())),
                                // DataCell(Text(pgm['idRole'].toString())),
                                DataCell(Text(pgm['emailContact'].toString())),
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
                                                "Are you sure want to delete data page ${pgm['idContact']}?"),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text("Yes"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  deleteContact(pgm['idContact'])
                                                      .then((isSuccess) {
                                                    if (isSuccess) {
                                                      setState(() {});
                                                      ScaffoldMessenger.of(this.context)
                                                          .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      "Delete data success")));
                                                    } else {
                                                      ScaffoldMessenger.of(this.context)
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
