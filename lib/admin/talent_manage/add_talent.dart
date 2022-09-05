

import 'package:flutter/material.dart';
import 'package:easy_table/easy_table.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTalent extends StatefulWidget {
  const AddTalent({Key? key}) : super(key: key);

  @override
  State<AddTalent> createState() => _AddTalentState();
}

class _talent {
  _talent(
      this.no, this.nama, this.deskripsi, this.lokasi, this.post, this.delete);

  final int no;
  final String nama;
  final String deskripsi;
  final String lokasi;
  final String post;
  final Widget delete;
}

class _AddTalentState extends State<AddTalent> {
  EasyTableModel<_talent>? _model;

  @override
  void initState() {
    super.initState();

    List<_talent> rows = [
      _talent(1, 'Budi', 'Dibu', 'South Jakarta', '2022-07-18',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _talent(2, 'Fahrur', 'Dota 2 Champions', 'Madura', '2022-01-01',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _talent(3, 'Udin', 'Jualan tahu bulat', 'Ciamis', '2022-03-29',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _talent(4, 'Rizki', 'Pro Player Mobile Legend', 'Bekasi', '2022-04-2',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _talent(
          5,
          'Faid',
          'Angker, KRL Mania, Pengguna Transportasi Public',
          'Bogor',
          '2022-05-29',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _talent(6, 'Tohap', 'Member Eksad', 'Jakarta Barat', '2022-03-9',
          TextButton(onPressed: () {}, child: const Text('delete'))),
    ];

    _model = EasyTableModel<_talent>(rows: rows, columns: [
      EasyTableColumn(
          name: 'No',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          intValue: (row) => row.no),
      EasyTableColumn(name: 'Nama', weight: 3, stringValue: (row) => row.nama),
      EasyTableColumn(
          name: 'Description', weight: 3, stringValue: (row) => row.deskripsi),
      EasyTableColumn(
          name: 'Location', weight: 3, stringValue: (row) => row.lokasi),
      EasyTableColumn(
          name: 'Posted',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          weight: 2,
          stringValue: (row) => row.post),
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
      backgroundColor: const Color.fromRGBO(238, 224, 224, 1),
      body: Center(
        child: Container(
          //padding: EdgeInsets.symmetric(vertical: screenSize.height*0.1,horizontal: screenSize.width*0.2),
          width: screenSize.width * 0.72,
          height: screenSize.height * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: const Color.fromARGB(255, 18, 108, 178), width: 20),
            color: Colors.white,
          ),

          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 50),
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     topRight: Radius.circular(20),
                  //     topLeft: Radius.circular(20)),
                  // color: Colors.white
                  color: Color.fromARGB(255, 18, 108, 178),
                ),
                width: screenSize.width * 0.7,
                height: screenSize.height * 0.15,
                child: const Text(
                  'Create Talent',
                  style: TextStyle(
                      color: Colors.white,
                      // Color.fromARGB(255, 18, 108, 178),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              Container(
                width: screenSize.width * 0.7,
                height: screenSize.height * 0.06,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 18, 108, 178), width: 20),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    // color: Color.fromARGB(255, 18, 108, 178),
                    ),
                width: screenSize.width * 0.65,
                height: screenSize.height * 0.46,
                child: Center(
                  child: Container(
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
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: screenSize1 * 0.2,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  labelText: "Fullname",
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
                            "Gender",
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
                            width: screenSize1 * 0.2,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  labelText: "Gender",
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
                            "Expected Salary",
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
                            width: screenSize1 * 0.2,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  labelText: "Expected Salary",
                                  hintStyle: TextStyle(),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey))),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ]
                        // color: Colors.white,
                        // child: EasyTable<_talent>(
                        //   _model,
                        //   columnsFit: true,
                        // ),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
