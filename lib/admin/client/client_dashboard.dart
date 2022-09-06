import 'package:flutter/material.dart';
import 'data_sources.dart';

class ClientDashboard extends StatefulWidget {
  const ClientDashboard({Key? key}) : super(key: key);

  @override
  State<ClientDashboard> createState() => _ClientDashboardState();
}

class _ClientDashboardState extends State<ClientDashboard> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
              color: const Color.fromARGB(255, 18, 108, 178)),

          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 6, left: 50),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color:
                      // Colors.white
                      Color.fromARGB(255, 18, 108, 178),
                ),
                width: screenSize.width * 0.7,
                height: screenSize.height * 0.14,
                child: const Text(
                  'Data Client',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              // Container(
              //   width: screenSize.width * 0.7,
              //   height: screenSize.height * 0.06,
              //   decoration: BoxDecoration(
              //     border: Border(
              //       top: BorderSide(color: Color.fromARGB(255, 18, 108, 178), width: 10),
              //     ),
              //   ),
              // ),
              Container(
                width: screenSize.width * 0.65,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                    child: const PaginatedDataTableDemo()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// The file was extracted from GitHub: https://github.com/flutter/gallery
// Changes and modifications by Maxim Saplin, 2021

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
  late DessertDataSource _clientDataSource;
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
      _clientDataSource = DessertDataSource(context);
      initialized = true;
    }
    switch (_sortColumnIndex.value) {
      case 0:
        _clientDataSource.sort<num>((d) => d.nomer, _sortAscending.value);
        break;
      case 1:
        _clientDataSource.sort<String>(
            (d) => d.namaClient, _sortAscending.value);
        break;
      case 2:
        _clientDataSource.sort<String>(
            (d) => d.deskripsi, _sortAscending.value);
        break;
      case 3:
        _clientDataSource.sort<String>((d) => d.lokasi, _sortAscending.value);
        break;
      case 4:
        _clientDataSource.sort<String>((d) => d.posted, _sortAscending.value);
        break;
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
    _clientDataSource.updateSelectedClients(_dessertSelections);
    _clientDataSource.addListener(_updateSelectedDessertRowListener);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!initialized) {
      _clientDataSource = DessertDataSource(context);
      initialized = true;
    }
    _clientDataSource.addListener(_updateSelectedDessertRowListener);
  }

  void _updateSelectedDessertRowListener() {
    _dessertSelections.setClientSelections(_clientDataSource.clients);
  }

  void sort<T>(
    Comparable<T> Function(Client d) getField,
    int columnIndex,
    bool ascending,
  ) {
    _clientDataSource.sort<T>(getField, ascending);
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
    _clientDataSource.removeListener(_updateSelectedDessertRowListener);
    _clientDataSource.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PaginatedDataTable(
      rowsPerPage: 4,
      initialFirstRowIndex: _rowIndex.value,
      onPageChanged: (rowIndex) {
        setState(() {
          _rowIndex.value = rowIndex;
        });
      },
      sortColumnIndex: _sortColumnIndex.value,
      sortAscending: _sortAscending.value,
      //onSelectAll: _dessertsDataSource.selectAll,
      columns: [
        DataColumn(
          label: const Text('No'),
          numeric: true,
          onSort: (columnIndex, ascending) =>
              sort<num>((d) => d.nomer, columnIndex, ascending),
        ),
        DataColumn(
          label: const Text('Client Name'),
          onSort: (columnIndex, ascending) =>
              sort<String>((d) => d.namaClient, columnIndex, ascending),
        ),
        DataColumn(
          label: const Text('Description'),
          //numeric: true,
          onSort: (columnIndex, ascending) =>
              sort<String>((d) => d.deskripsi, columnIndex, ascending),
        ),
        DataColumn(
          label: const Text('Location'),
          //numeric: true,
          onSort: (columnIndex, ascending) =>
              sort<String>((d) => d.lokasi, columnIndex, ascending),
        ),
        DataColumn(
          label: const Text('Posted'),
          //numeric: true,
          onSort: (columnIndex, ascending) =>
              sort<String>((d) => d.posted, columnIndex, ascending),
        ),
      ],
      source: _clientDataSource,
    );
  }
}

// DataColumn(
//   label: const Text('Sodium (mg)'),
//   numeric: true,
//   onSort: (columnIndex, ascending) =>
//       sort<num>((d) => d.sodium, columnIndex, ascending),
// ),
// DataColumn(
//   label: const Text('Calcium (%)'),
//   numeric: true,
//   onSort: (columnIndex, ascending) =>
//       sort<num>((d) => d.calcium, columnIndex, ascending),
// ),
// DataColumn(
//   label: const Text('Iron (%)'),
//   numeric: true,
//   onSort: (columnIndex, ascending) =>
//       sort<num>((d) => d.iron, columnIndex, ascending),
// ),
