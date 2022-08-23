import 'package:flutter/material.dart';
import 'package:easy_table/easy_table.dart';
import 'package:google_fonts/google_fonts.dart';

class EditBriefly extends StatefulWidget {
  const EditBriefly({Key? key}) : super(key: key);

  @override
  State<EditBriefly> createState() => _EditBrieflyState();
}

class _skill {
  _skill(this.no, this.skill, this.posting, this.status, this.delete);

  final int no;
  final String skill;
  final String posting;
  final String status;
  final Widget delete;
}

class _EditBrieflyState extends State<EditBriefly> {
  EasyTableModel<_skill>? _model;

  @override
  void initState() {
    super.initState();

    List<_skill> rows = [
      _skill(1, 'React', '2022-07-18', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _skill(2, 'Java ', '2022-01-01', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _skill(3, 'Quarkus', '2022-03-29', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _skill(4, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _skill(5, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _skill(6, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
    ];

    _model = EasyTableModel<_skill>(rows: rows, columns: [
      EasyTableColumn(
          name: 'No',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          intValue: (row) => row.no),
      EasyTableColumn(
          name: 'Skill', weight: 3, stringValue: (row) => row.skill),
      EasyTableColumn(
          name: 'Posted',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          weight: 2,
          stringValue: (row) => row.posting),
      EasyTableColumn(
          name: 'Status',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          weight: 2,
          stringValue: (row) => row.status),
      EasyTableColumn(
          name: '',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          weight: 1,
          objectValue: (row) => row.delete)
    ]);
  }

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenSize1 = screenSize.width * 0.6;
    return Scaffold(
      body: Container(
          width: screenSize.width * 0.64,
          //color: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Container(
            //   width: screenSize.width * 0.6,
            //   height: 330,
            //   color: Colors.white70,
            //   child: EasyTable<_skill>(
            //     _model,
            //     columnsFit: true,
            //   ),
            // ),

            Container(
              width: screenSize.width * 0.63,
              height: screenSize.height * 0.42,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: GoogleFonts.didactGothic(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      width: screenSize1 * 0.3,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            // labelText: "Fullname",
                            // hintStyle: TextStyle(),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Latest Position",
                      style: GoogleFonts.didactGothic(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(children: [
                      Container(
                        height: 30,
                        width: screenSize1 * 0.3,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              // labelText: "Fullname",
                              // hintStyle: TextStyle(),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.grey))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ]),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Text(
                            "Age",
                            style: GoogleFonts.didactGothic(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 30,
                            width: screenSize1 * 0.1,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  // labelText: "Fullname",
                                  // hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey))),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          children: [
                            Text(
                              "Gender",
                              style: GoogleFonts.didactGothic(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
                              width: screenSize1 * 0.1,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    // labelText: "Fullname",
                                    // hintStyle: TextStyle(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Text(
                            "Work Period",
                            style: GoogleFonts.didactGothic(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 30,
                            width: screenSize1 * 0.1,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  // labelText: "Fullname",
                                  // hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey))),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          children: [
                            Text(
                              "Latest Work Period",
                              style: GoogleFonts.didactGothic(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
                              width: screenSize1 * 0.1,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    // labelText: "Fullname",
                                    // hintStyle: TextStyle(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Text(
                            "Expected Salary",
                            style: GoogleFonts.didactGothic(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 30,
                            width: screenSize1 * 0.1,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  // labelText: "Fullname",
                                  // hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey))),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          children: [
                            Text(
                              "Salary Status",
                              style: GoogleFonts.didactGothic(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
                              width: screenSize1 * 0.1,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    // labelText: "Fullname",
                                    // hintStyle: TextStyle(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Latest Company",
                          style: GoogleFonts.didactGothic(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 30,
                          width: screenSize1 * 0.3,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                // labelText: "Fullname",
                                // hintStyle: TextStyle(),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.grey))),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Work Location",
                          style: GoogleFonts.didactGothic(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: screenSize.width * 0.6,
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 25),
                                width: screenSize.width * 0.1,
                                height: 55,
                                //color: Colors.red,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: const [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Cancel')
                                      ],
                                    )),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 25),
                                width: screenSize.width * 0.1,
                                height: 55,
                                //color: Colors.red,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: const [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Save')
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ])),
    );
  }
}
