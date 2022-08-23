import 'package:flutter/material.dart';
// import 'package:protalent_eksad/conts_warna.dart';
import 'package:easy_table/easy_table.dart';

class EditLevel extends StatefulWidget {
  const EditLevel({Key? key}) : super(key: key);

  @override
  State<EditLevel> createState() => _EditLevelState();
}

class _level {
  _level(this.no, this.level, this.posting, this.status, this.delete);

  final int no;
  final String level;
  final String posting;
  final String status;
  final Widget delete;
}

class _EditLevelState extends State<EditLevel> {
  EasyTableModel<_level>? _model;

  @override
  void initState() {
    super.initState();

    List<_level> rows = [
      _level(1, 'Junior Java Programmer', '2022-07-18', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _level(2, 'Junior Flutter Programmer ', '2022-01-01', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _level(3, 'Senior Quarkus Programmer', '2022-03-29', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _level(4, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _level(5, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      _level(6, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
    ];

    _model = EasyTableModel<_level>(rows: rows, columns: [
      EasyTableColumn(
          name: 'No',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          intValue: (row) => row.no),
      EasyTableColumn(
          name: 'Level', weight: 3, stringValue: (row) => row.level),
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
              child: EasyTable<_level>(
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
