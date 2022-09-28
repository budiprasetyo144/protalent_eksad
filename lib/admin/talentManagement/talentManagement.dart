import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/admin/client/clientControl_api.dart';
import 'package:protalent_eksad/admin/contact/contactList_api.dart';
import 'package:protalent_eksad/admin/talentManagement/talentManagement_api.dart';
import 'package:protalent_eksad/admin/talent_manage/talent_manage.dart';

class TalentManagements extends StatefulWidget {
  const TalentManagements({Key? key}) : super(key: key);

  @override
  State<TalentManagements> createState() => _TalentManagementsState();
}

class _TalentManagementsState extends State<TalentManagements> {
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
  String id = '';
  String nm = '';
  String gd = '';
  String ag = '';
  String we = '';
  String es = '';
  String st = '';
  String lwp = '';
  String lw = '';
  String lc = '';
  String lp = '';
  String iu = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
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
              height: screenSize.height * 0.1,
              child: Center(
                child: Text(
                  'Talent Management',
                  style: GoogleFonts.poppins(
                      height: 1,
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent[200]),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: Form(
                            child: Container(
                          padding: EdgeInsets.only(
                              left: screenSize.width * 0.045,
                              top: screenSize.height * 0.01),
                          width: screenSize.width * 0.50,
                          height: screenSize.height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Spacer(),
                              Container(
                                padding: EdgeInsets.only(
                                    left: screenSize.width * 0.15),
                                height: screenSize.width * 0.02,
                                child: Image.asset(
                                    "assets/logo/logo_protalent.png"),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.drive_file_rename_outline,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Name Talent",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => nm = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Name Talent tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Name Talent",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  )),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 30),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.assignment_ind,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Age",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => ag = value,
                                              textAlign: TextAlign.start,
                                              decoration: InputDecoration(
                                                  labelText: "Age",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  )),
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Age tidak boleh kosong";
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
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons
                                                .personCircleQuestion,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Status Talent",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => st = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Status Talent tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Status Talent",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
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
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.venusMars,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Gender",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => gd = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Gender tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Gender",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
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
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.building,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Latest Company",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => lc = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Latest Company tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Latest Company",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
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
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.briefcase,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Latest Position",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => lp = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Latest Position tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Latest Position",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
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
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.businessTime,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Latest Work Periode",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => lwp = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Latest Work Periode tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText:
                                                      "Latest Work Periode",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
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
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.locationDot,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Location Work",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => lw = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Location Work tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Location Work",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
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
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.moneyCheckDollar,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Expected Salary",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => es = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Expected Salary tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Expected Salary",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
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
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.building,
                                            color: Colors.grey[500],
                                            size: screenSize.width * 0.01,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            "Work Experience",
                                            style: TextStyle(fontSize: 13),
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
                                            width: screenSize.width * 0.2,
                                            child: TextFormField(
                                              onChanged: (value) => we = value,
                                              textAlign: TextAlign.start,
                                              // readOnly: true,
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return "Work Experience tidak boleh kosong";
                                                }
                                                return null;
                                              },
                                              decoration: InputDecoration(
                                                  labelText: "Work Experience",
                                                  labelStyle:
                                                      TextStyle(fontSize: 13),
                                                  hintStyle: const TextStyle(),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
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
                        actions: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.white,
                              backgroundColor: Colors.blue,
                              textStyle: const TextStyle(fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              createTalent(id, nm, gd, ag, we, es, st, lwp, lw,
                                      lc, lp, iu)
                                  .then(
                                (isSuccess) {
                                  if (isSuccess) {
                                    setState(() {});
                                    Scaffold.of(this.context).showSnackBar(
                                        const SnackBar(
                                            content: Text("Data success")));
                                  } else {
                                    Scaffold.of(this.context).showSnackBar(
                                        const SnackBar(
                                            content: Text("Data failed!!!")));
                                  }
                                },
                              );
                            },
                            child: const Text('save'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text('Add Talent'),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: screenSize.height * 0.6,
              child: ListView(
                controller: ScrollController(),
                children: [
                  FutureBuilder<List<dynamic>>(
                      future: getTalentList(),
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
                                "Id Talent",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              DataColumn(
                                  label: Text(
                                "Talent Name",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              // DataColumn(label: Text("Telp Rumah Sakit")),
                              DataColumn(
                                  label: Text(
                                "Position",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              // DataColumn(label: Text("Nama PIC")),
                              // DataColumn(label: Text("Telp PIC")),
                              // DataColumn(label: Text("Email PIC")),
                              DataColumn(
                                  label: Text(
                                "Expected Salary",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              DataColumn(
                                  label: Text(
                                "Status",
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

                              final idTalentController = TextEditingController()
                                ..text = pgm['idTalent'].toString();
                              final ageController = TextEditingController(
                                  text: pgm['age'].toString());
                              final expectedSalaryController =
                                  TextEditingController(
                                      text: pgm['expectedSalary'].toString());
                              final genderController = TextEditingController(
                                  text: pgm['gender'].toString());
                              final latestCompanyController =
                                  TextEditingController(
                                      text: pgm['latestCompany'].toString());
                              final latestPositionController =
                                  TextEditingController()
                                    ..text = pgm['latestPosition'].toString();
                              final latestWorkPeriodeController =
                                  TextEditingController(
                                      text:
                                          pgm['latestWorkPeriode'].toString());
                              final locationWorkController =
                                  TextEditingController(
                                      text: pgm['locationWork'].toString());
                              final nameTalentController =
                                  TextEditingController(
                                      text: pgm['nameTalent'].toString());
                              final statusSalaryController =
                                  TextEditingController(
                                      text: pgm['statusSalary'].toString());
                              final workExperienceController =
                                  TextEditingController(
                                      text: pgm['workExperience'].toString());
                              final statusTalentController =
                                  TextEditingController(
                                      text: pgm['statusTalent'].toString());
                              final statusActiveController =
                                  TextEditingController(
                                      text: pgm['statusActive'].toString());
                              // final statusController = TextEditingController(
                              //     text: pgm['status'].toString());

                              // final passwordController =
                              //     TextEditingController();
                              void EditTalent(BuildContext context) {
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
                                          width: screenSize.width * 0.73,
                                          height: screenSize.height,
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
                                                        0.27),
                                                height: screenSize.width * 0.03,
                                                child: Image.asset(
                                                    "assets/logo/logo_protalent.png"),
                                              ),
                                              SizedBox(
                                                height: 30,
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
                                                              FontAwesomeIcons
                                                                  .idCard,
                                                              color: Colors
                                                                  .grey[500],
                                                              size: screenSize
                                                                      .width *
                                                                  0.01),
                                                          const SizedBox(
                                                              width: 10),
                                                          const Text(
                                                              "Id Talent",
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
                                                                  idTalentController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration: InputDecoration(
                                                                  labelText:
                                                                      "Id Talent",
                                                                  labelStyle:
                                                                      TextStyle(
                                                                          fontSize:
                                                                              13),
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0))),
                                                              readOnly: true,

                                                              // onChanged:
                                                              //     (value) =>
                                                              //         id =
                                                              //             value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Id Talent tidak boleh kosong";
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
                                                                .assignment_ind,
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
                                                            "Age",
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
                                                                  ageController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Age",
                                                                      labelStyle: TextStyle(
                                                                          fontSize:
                                                                              13),
                                                                      border:
                                                                          OutlineInputBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.0),
                                                                      )),
                                                              // readOnly: true,
                                                              // onChanged:
                                                              //     (value) =>
                                                              //         ag =
                                                              //             value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Age tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
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
                                                            "Name Talent",
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
                                                                  nameTalentController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // onChanged:
                                                              //     (value) =>
                                                              //         nm =
                                                              //             value,
                                                              // readOnly: true,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Name Talent tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Name Talent",
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
                                                            FontAwesomeIcons
                                                                .venusMars,
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
                                                            "Gender",
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
                                                                  genderController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // readOnly: true,
                                                              // onChanged:
                                                              //     (value) =>
                                                              //         gd =
                                                              //             value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Gender tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Gender",
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
                                                            FontAwesomeIcons
                                                                .building,
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
                                                            "Latest Company",
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
                                                                  latestCompanyController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // readOnly: true,
                                                              // onChanged:
                                                              //     (value) =>
                                                              //         lc =
                                                              //             value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Latest Company tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Latest Company",
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
                                                            FontAwesomeIcons
                                                                .briefcase,
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
                                                            "Latest Position",
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
                                                                  latestPositionController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // readOnly: true,
                                                              // onChanged:
                                                              //     (value) =>
                                                              //         lp =
                                                              //             value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Latest Position tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Latest Position",
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
                                                            FontAwesomeIcons
                                                                .businessTime,
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
                                                            "Latest Work Periode",
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
                                                                  latestWorkPeriodeController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // readOnly: true,
                                                              // onChanged:
                                                              //     (value) =>
                                                              //         lwp =
                                                              //             value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Latest Work Periode tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Latest Work Periode",
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
                                                            FontAwesomeIcons
                                                                .locationDot,
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
                                                            "Location Work",
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
                                                                  locationWorkController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // readOnly: true,
                                                              // onChanged:
                                                              //     (value) =>
                                                              //         lw =
                                                              //             value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Location Work tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Location Work",
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
                                                            FontAwesomeIcons
                                                                .building,
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
                                                            "Work Experience",
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
                                                                  workExperienceController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // readOnly: true,
                                                              // onChanged: (value) => we = value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Work Experience tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Work Experience",
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
                                                            FontAwesomeIcons
                                                                .moneyCheckDollar,
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
                                                            "Expected Salary",
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
                                                                  expectedSalaryController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // onChanged:
                                                              //     (value) =>
                                                              //         es =
                                                              //             value,
                                                              // readOnly: true,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Expected Salary tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Expected Salary",
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
                                                            FontAwesomeIcons
                                                                .personCircleQuestion,
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
                                                            "Status Talent",
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
                                                                  statusTalentController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              // readOnly: true,
                                                              // onChanged: (value) => st = value,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    value
                                                                        .isEmpty) {
                                                                  return "Status Talent tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Status Talent",
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
                                                            FontAwesomeIcons
                                                                .circleQuestion,
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
                                                            "Status Active",
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
                                                                  statusActiveController,
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
                                                                  return "Status Active tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Status Active",
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
                                        actions: <Widget>[
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              primary: Colors.white,
                                              backgroundColor: Colors.blue,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              createTalent(
                                                      pgm['idTalent'],
                                                      nameTalentController
                                                          .value.text,
                                                      genderController
                                                          .value.text,
                                                      ageController.value.text,
                                                      workExperienceController
                                                          .value.text,
                                                      expectedSalaryController
                                                          .value.text,
                                                      statusTalentController
                                                          .value.text,
                                                      latestWorkPeriodeController
                                                          .value.text,
                                                      locationWorkController
                                                          .value.text,
                                                      latestCompanyController
                                                          .value.text,
                                                      latestPositionController
                                                          .value.text,
                                                      iu)
                                                  .then(
                                                (isSuccess) {
                                                  if (isSuccess) {
                                                    setState(() {});
                                                    Scaffold.of(this.context)
                                                        .showSnackBar(
                                                            const SnackBar(
                                                                content: Text(
                                                                    "Data success")));
                                                  } else {
                                                    Scaffold.of(this.context)
                                                        .showSnackBar(
                                                            const SnackBar(
                                                                content: Text(
                                                                    "Data failed!!!")));
                                                  }
                                                },
                                              );
                                            },
                                            child: const Text('save'),
                                          ),
                                        ],
                                      );
                                    });
                              }

                              void viewTalent(BuildContext context) {
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
                                          width: screenSize.width * 0.73,
                                          height: screenSize.height,
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
                                                        0.27),
                                                height: screenSize.width * 0.03,
                                                child: Image.asset(
                                                    "assets/logo/logo_protalent.png"),
                                              ),
                                              SizedBox(
                                                height: 30,
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
                                                              FontAwesomeIcons
                                                                  .idCard,
                                                              color: Colors
                                                                  .grey[500],
                                                              size: screenSize
                                                                      .width *
                                                                  0.01),
                                                          const SizedBox(
                                                              width: 10),
                                                          const Text(
                                                              "Id Talent",
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
                                                                  idTalentController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration: InputDecoration(
                                                                  labelText:
                                                                      "Id Talent",
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
                                                                  return "Id Talent tidak boleh kosong";
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
                                                                .assignment_ind,
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
                                                            "Age",
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
                                                                  ageController,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Age",
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
                                                                  return "Age tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
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
                                                            "Name Talent",
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
                                                                  nameTalentController,
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
                                                                  return "Name Talent tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Name Talent",
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
                                                            FontAwesomeIcons
                                                                .venusMars,
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
                                                            "Gender",
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
                                                                  genderController,
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
                                                                  return "Gender tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Gender",
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
                                                            FontAwesomeIcons
                                                                .building,
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
                                                            "Latest Company",
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
                                                                  latestCompanyController,
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
                                                                  return "Latest Company tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Latest Company",
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
                                                            FontAwesomeIcons
                                                                .briefcase,
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
                                                            "Latest Position",
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
                                                                  latestPositionController,
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
                                                                  return "Latest Position tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Latest Position",
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
                                                            FontAwesomeIcons
                                                                .businessTime,
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
                                                            "Latest Work Periode",
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
                                                                  latestWorkPeriodeController,
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
                                                                  return "Latest Work Periode tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Latest Work Periode",
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
                                                            FontAwesomeIcons
                                                                .locationDot,
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
                                                            "Location Work",
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
                                                                  locationWorkController,
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
                                                                  return "Location Work tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Location Work",
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
                                                            FontAwesomeIcons
                                                                .building,
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
                                                            "Work Experience",
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
                                                                  workExperienceController,
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
                                                                  return "Work Experience tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Work Experience",
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
                                                            FontAwesomeIcons
                                                                .moneyCheckDollar,
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
                                                            "Expected Salary",
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
                                                                  expectedSalaryController,
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
                                                                  return "Expected Salary tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Expected Salary",
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
                                                            FontAwesomeIcons
                                                                .personCircleQuestion,
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
                                                            "Status Talent",
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
                                                                  statusTalentController,
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
                                                                  return "Status Talent tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Status Talent",
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
                                                            FontAwesomeIcons
                                                                .circleQuestion,
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
                                                            "Status Active",
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
                                                                  statusActiveController,
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
                                                                  return "Status Active tidak boleh kosong";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:
                                                                  InputDecoration(
                                                                      labelText:
                                                                          "Status Active",
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
                                DataCell(Text(pgm['idTalent'].toString())),
                                DataCell(Text(pgm['nameTalent'].toString())),
                                // DataCell(Text(pgm['noRs'].toString())),
                                DataCell(
                                    Text(pgm['latestPosition'].toString())),
                                // DataCell(Text(pgm['namaPic'].toString())),
                                // DataCell(Text(pgm['noPic'].toString())),
                                // DataCell(Text(pgm['emailPic'].toString())),
                                DataCell(
                                    Text(pgm['expectedSalary'].toString())),
                                DataCell(Text(pgm['statusTalent'].toString())),
                                DataCell(PopupMenuButton(
                                  icon: Icon(Icons.more_vert_outlined),
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                        child: Text("Edit"), value: 1),
                                    PopupMenuItem(
                                        child: Text("Delete"), value: 2),
                                    PopupMenuItem(child: Text("View"), value: 3)
                                  ],
                                  onSelected: (value) {
                                    if (value == 1) {
                                      print("you choose Edit...");
                                      EditTalent(context);
                                    } else if (value == 2) {
                                      print("you choose Delete...");
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text("Warning"),
                                            content: Text(
                                                "Are you sure want to delete data page ${pgm['idTalent']}?"),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text("Yes"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  deleteTalent(pgm['idTalent'])
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
                                    } else if (value == 3) {
                                      print("you choose View...");
                                      viewTalent(context);
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
