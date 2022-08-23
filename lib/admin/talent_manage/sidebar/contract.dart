import 'package:flutter/material.dart';
// import 'package:protalent_eksad/conts_warna.dart';
// import 'package:protalent_eksad/admin/dashboard.dart';
import 'package:easy_table/easy_table.dart';

class EditContract extends StatefulWidget {
  const EditContract({Key? key}) : super(key: key);

  @override
  State<EditContract> createState() => _EditContractState();
}

class Posisi {
  Posisi(this.no, this.position, this.posting, this.status, this.delete);

  final int no;
  final String position;
  final String posting;
  final String status;
  final Widget delete;
}

class _EditContractState extends State<EditContract> {
  String posisi = '';
  EasyTableModel<Posisi>? _model;

  @override
  void initState() {
    super.initState();

    List<Posisi> rows = [
      Posisi(1, 'Head Product', '2022-07-18', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Posisi(2, 'Java Developer', '2022-01-01', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Posisi(3, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Posisi(4, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Posisi(5, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Posisi(6, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
    ];

    _model = EasyTableModel<Posisi>(rows: rows, columns: [
      EasyTableColumn(
          name: 'No',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          intValue: (row) => row.no),
      EasyTableColumn(
          name: 'Position', weight: 3, stringValue: (row) => row.position),
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
    Future openDialog() => showDialog(
          context: context,
          builder: (context) => EasyTable<Posisi>(
            _model,
            columnsFit: true,
          ),
          //     TextFormField(
          //   textAlign: TextAlign.start,
          //   decoration: InputDecoration(
          //     labelText: "Isi position talent",
          //     hintStyle: TextStyle(),
          //     border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(5.0)),
          //   ),
          // ),
        );

    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width * 0.64,
        //color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width * 0.6,
              height: 330,
              color: Colors.white70,
              child: EasyTable<Posisi>(
                _model,
                columnsFit: true,
              ),
            ),
            const Spacer(
              flex: 1,
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
      ),
    );
  }
}
