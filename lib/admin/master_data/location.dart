import 'package:flutter/material.dart';
import 'package:protalent_eksad/conts_warna.dart';
//import 'package:protalent_eksad/admin/dashboard.dart';
import 'package:easy_table/easy_table.dart';
import 'data_location.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class Lokasi {
  Lokasi(this.no, this.location, this.posting, this.status, this.delete);

  final int no;
  final String location;
  final String posting;
  final String status;
  final Widget delete;
}

class _LocationState extends State<Location> {
  String lokasi = '';
  EasyTableModel<Lokasi>? _model;

  @override
  void initState() {
    super.initState();

    List<Lokasi> rows = [
      Lokasi(1, 'Head Product', '2022-07-18', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Lokasi(2, 'Java Developer', '2022-01-01', 'ACTIVE',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Lokasi(3, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Lokasi(4, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Lokasi(5, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
      Lokasi(6, '', '', '',
          TextButton(onPressed: () {}, child: const Text('delete'))),
    ];

    _model = EasyTableModel<Lokasi>(rows: rows, columns: [
      EasyTableColumn(
          name: 'No',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          intValue: (row) => row.no),
      EasyTableColumn(
          name: 'Location', weight: 3, stringValue: (row) => row.location),
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
          builder: (context) => EasyTable<Lokasi>(
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
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenSize.width * 0.2,
              //color: Colors.grey,
              child: const Text(
                "Talent Location",
                style: TextStyle(
                    fontSize: 30,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
                width: screenSize.width * 0.6,
                height: screenSize.height*0.4,
                color: Colors.white70,
                child: const PaginatedDataTableDemo()),
            const Spacer(
              flex: 1,
            ),
            Container(
              width: screenSize.width * 0.6,
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                    width: screenSize.width * 0.4,
                    height: 58,
                    //color: Colors.grey,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        labelText: "Isi lokasi talent",
                        hintStyle: const TextStyle(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 25),
                    width: screenSize.width * 0.15,
                    height: 58,
                    //color: Colors.red,
                    child: ElevatedButton(
                        onPressed: () async {
                          final posisi = await openDialog();
                          if (posisi == null || posisi.isEmpty) return;
                          setState(() => this._model = posisi);
                        },
                        child: Container(
                          width: screenSize.width * 0.08,
                          child: Row(
                            children: [
                              Container(
                                  width: screenSize.width * 0.017,
                                  child: const Icon(Icons.save)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                  width: screenSize.width * 0.028,
                                  child: const Text('Save'))
                            ],
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  const PaginatedDataTableDemo({super.key});

  @override
  PaginatedDataTableDemoState createState() => PaginatedDataTableDemoState();
}

class PaginatedDataTableDemoState extends State<PaginatedDataTableDemo>
    with RestorationMixin {
  final RestorableClientSelections _dessertSelections =
      RestorableClientSelections();
  final RestorableInt _rowIndex = RestorableInt(0);
  final RestorableInt _rowsPerPage =
      RestorableInt(PaginatedDataTable.defaultRowsPerPage);
  final RestorableBool _sortAscending = RestorableBool(true);
  final RestorableIntN _sortColumnIndex = RestorableIntN(null);
  late DessertDataSource _dessertsDataSource;
  bool initialized = false;

  @override
  String get restorationId => 'paginated_data_table_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_dessertSelections, 'selected_row_indices');
    registerForRestoration(_rowIndex, 'current_row_index');
    registerForRestoration(_rowsPerPage, 'rows_per_page');
    registerForRestoration(_sortAscending, 'sort_ascending');
    registerForRestoration(_sortColumnIndex, 'sort_column_index');

    if (!initialized) {
      _dessertsDataSource = DessertDataSource(context);
      initialized = true;
    }
    switch (_sortColumnIndex.value) {
      case 0:
        _dessertsDataSource.sort<num>((d) => d.nomer, _sortAscending.value);
        break;
      case 1:
        _dessertsDataSource.sort<String>((d) => d.lokasi, _sortAscending.value);
        break;
      case 2:
        _dessertsDataSource.sort<String>((d) => d.post, _sortAscending.value);
        break;
      case 3:
        _dessertsDataSource.sort<String>((d) => d.status, _sortAscending.value);
        break;
      // case 4:
      //   _dessertsDataSource.sort<Widget>((d) => d.button, _sortAscending.value);
      //   break;
      // case 5:
      //   _dessertsDataSource.sort<num>((d) => d.sodium, _sortAscending.value);
      //   break;
      // case 6:
      //   _dessertsDataSource.sort<num>((d) => d.calcium, _sortAscending.value);
      //   break;
      // case 7:
      //   _dessertsDataSource.sort<num>((d) => d.iron, _sortAscending.value);
      //   break;
    }
    _dessertsDataSource.updateSelectedClients(_dessertSelections);
    _dessertsDataSource.addListener(_updateSelectedDessertRowListener);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!initialized) {
      _dessertsDataSource = DessertDataSource(context);
      initialized = true;
    }
    _dessertsDataSource.addListener(_updateSelectedDessertRowListener);
  }

  void _updateSelectedDessertRowListener() {
    _dessertSelections.setClientSelections(_dessertsDataSource.clients);
  }

  void sort<T>(
    Comparable<T> Function(Client d) getField,
    int columnIndex,
    bool ascending,
  ) {
    _dessertsDataSource.sort<T>(getField, ascending);
    setState(() {
      _sortColumnIndex.value = columnIndex;
      _sortAscending.value = ascending;
    });
  }

  @override
  void dispose() {
    _rowsPerPage.dispose();
    _sortColumnIndex.dispose();
    _sortAscending.dispose();
    _dessertsDataSource.removeListener(_updateSelectedDessertRowListener);
    _dessertsDataSource.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.63,
      height: screenSize.height * 0.43,
      child: ListView(
        controller: ScrollController(),
        restorationId: 'paginated_data_table_list_view',
        padding: const EdgeInsets.all(7),
        children: [
          PaginatedDataTable(
            rowsPerPage: _rowsPerPage.value,
            onRowsPerPageChanged: (value) {
              setState(() {
                _rowsPerPage.value = value!;
              });
            },
            initialFirstRowIndex: _rowIndex.value,
            onPageChanged: (rowIndex) {
              setState(() {
                _rowIndex.value = rowIndex;
              });
            },
            sortColumnIndex: _sortColumnIndex.value,
            sortAscending: _sortAscending.value,
            onSelectAll: _dessertsDataSource.selectAll,
            columns: [
              DataColumn(
                label: const Text('No'),
                numeric: true,
                onSort: (columnIndex, ascending) =>
                    sort<num>((d) => d.nomer, columnIndex, ascending),
              ),
              DataColumn(
                label: const Text('Location'),
                onSort: (columnIndex, ascending) =>
                    sort<String>((d) => d.lokasi, columnIndex, ascending),
              ),
              DataColumn(
                label: const Text('Posted'),
                //numeric: true,
                onSort: (columnIndex, ascending) =>
                    sort<String>((d) => d.post, columnIndex, ascending),
              ),
              DataColumn(
                label: const Text('STATUS'),
                //numeric: true,
                onSort: (columnIndex, ascending) =>
                    sort<String>((d) => d.status, columnIndex, ascending),
              ),
              const DataColumn(
                label: Text(''),
                //numeric: true,
                // onSort: (columnIndex, ascending) =>
                //     sort<Widget>((d) => d.button, columnIndex, ascending),
              ),
            ],
            source: _dessertsDataSource,
          ),
        ],
      ),
    );
  }
}
