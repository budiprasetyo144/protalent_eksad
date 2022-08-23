// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:data_table_2/data_table_2.dart';

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// The file was extracted from GitHub: https://github.com/flutter/gallery
// Changes and modifications by Maxim Saplin, 2021

/// Keeps track of selected rows, feed the data into DesertsDataSource
class RestorableClientSelections extends RestorableProperty<Set<int>> {
  Set<int> _clientSelections = {};

  /// Returns whether or not a dessert row is selected by index.
  bool isSelected(int index) => _clientSelections.contains(index);

  /// Takes a list of [Client]s and saves the row indices of selected rows
  /// into a [Set].
  void setClientSelections(List<Client> clients) {
    final updatedSet = <int>{};
    for (var i = 0; i < clients.length; i += 1) {
      var client = clients[i];
      if (client.selected) {
        updatedSet.add(i);
      }
    }
    _clientSelections = updatedSet;
    notifyListeners();
  }

  @override
  Set<int> createDefaultValue() => _clientSelections;

  @override
  Set<int> fromPrimitives(Object? data) {
    final selectedItemIndices = data as List<dynamic>;
    _clientSelections = {
      ...selectedItemIndices.map<int>((dynamic id) => id as int),
    };
    return _clientSelections;
  }

  @override
  void initWithValue(Set<int> value) {
    _clientSelections = value;
  }

  @override
  Object toPrimitives() => _clientSelections.toList();
}

int _idCounter = 0;

/// Domain model entity
class Client {
  Client(
    this.nomer,
    this.lokasi,
    this.post,
    this.status,
    this.button,
  );

  final int id = _idCounter++;

  final int nomer;
  final String lokasi;
  final String post;
  final String status;
  final Widget button;

  bool selected = false;
}

/// Data source implementing standard Flutter's DataTableSource abstract class
/// which is part of DataTable and PaginatedDataTable synchronous data fecthin API.
/// This class uses static collection of deserts as a data store, projects it into
/// DataRows, keeps track of selected items, provides sprting capability
class DessertDataSource extends DataTableSource {
  DessertDataSource.empty(this.context) {
    clients = [];
  }

  DessertDataSource(this.context,
      [sortedByCalories = false,
      this.hasRowTaps = false,
      this.hasRowHeightOverrides = false,
      this.hasZebraStripes = false]) {
    clients = _clients;
    if (sortedByCalories) {
      sort((d) => d.lokasi, true);
    }
  }

  final BuildContext context;
  late List<Client> clients;
  // Add row tap handlers and show snackbar
  bool hasRowTaps = false;
  // Override height values for certain rows
  bool hasRowHeightOverrides = false;
  // Color each Row by index's parity
  bool hasZebraStripes = false;

  void sort<T>(Comparable<T> Function(Client d) getField, bool ascending) {
    clients.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });
    notifyListeners();
  }

  void updateSelectedClients(RestorableClientSelections selectedRows) {
    _selectedCount = 0;
    for (var i = 0; i < clients.length; i += 1) {
      var dessert = clients[i];
      if (selectedRows.isSelected(i)) {
        dessert.selected = true;
        _selectedCount += 1;
      } else {
        dessert.selected = false;
      }
    }
    notifyListeners();
  }

  @override
  DataRow getRow(int index, [Color? color]) {
    final format = NumberFormat.decimalPercentPattern(
      locale: 'en',
      decimalDigits: 0,
    );
    assert(index >= 0);
    if (index >= clients.length) throw 'index > _desserts.length';
    final dessert = clients[index];
    return DataRow2.byIndex(
      index: index,
      selected: dessert.selected,
      color: color != null
          ? MaterialStateProperty.all(color)
          : (hasZebraStripes && index.isEven
              ? MaterialStateProperty.all(Theme.of(context).highlightColor)
              : null),
      onSelectChanged: hasRowTaps
          ? null
          : (value) {
              if (dessert.selected != value) {
                _selectedCount += value! ? 1 : -1;
                assert(_selectedCount >= 0);
                dessert.selected = value;
                notifyListeners();
              }
            },
      onTap: hasRowTaps
          ? () => _showSnackbar(context, 'Tapped on row ${dessert.nomer}')
          : null,
      onDoubleTap: hasRowTaps
          ? () =>
              _showSnackbar(context, 'Double Tapped on row ${dessert.nomer}')
          : null,
      onLongPress: hasRowTaps
          ? () => _showSnackbar(context, 'Long pressed on row ${dessert.nomer}')
          : null,
      onSecondaryTap: hasRowTaps
          ? () =>
              _showSnackbar(context, 'Right clicked on row ${dessert.nomer}')
          : null,
      onSecondaryTapDown: hasRowTaps
          ? (d) => _showSnackbar(
              context, 'Right button down on row ${dessert.nomer}')
          : null,
      specificRowHeight:
          hasRowHeightOverrides && dessert.nomer >= 25 ? 100 : null,
      cells: [
        DataCell(Text(dessert.nomer.toStringAsFixed(0))),
        DataCell(Text('${dessert.lokasi}'),
            onTap: () => _showSnackbar(context,
                'Tapped on a cell with "${dessert.lokasi}"', Colors.red)),
        DataCell(
          Text(dessert.post),
        ),
        DataCell(Text('${dessert.status}')),
        DataCell(TextButton(
          child: dessert.button,
          onPressed: () {},
        )),
        // DataCell(Text('${dessert.sodium}')),
        // DataCell(Text(format.format(dessert.calcium / 100))),
        // DataCell(Text(format.format(dessert.iron / 100))),
      ],
    );
  }

  @override
  int get rowCount => clients.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;

  void selectAll(bool? checked) {
    for (final client in clients) {
      client.selected = checked ?? false;
    }
    _selectedCount = (checked ?? false) ? clients.length : 0;
    notifyListeners();
  }
}

/// Async datasource for AsynPaginatedDataTabke2 example. Based on AsyncDataTableSource which
/// is an extension to FLutter's DataTableSource and aimed at solving
/// saync data fetching scenarious by paginated table (such as using Web API)
class ClientDataSourceAsync extends AsyncDataTableSource {
  ClientDataSourceAsync() {
    print('ClientDataSourceAsync created');
  }

  ClientDataSourceAsync.empty() {
    _empty = true;
    print('ClientDataSourceAsync.empty created');
  }

  ClientDataSourceAsync.error() {
    _errorCounter = 0;
    print('ClientDataSourceAsync.error created');
  }

  bool _empty = false;
  int? _errorCounter;

  RangeValues? _caloriesFilter;

  RangeValues? get caloriesFilter => _caloriesFilter;
  set caloriesFilter(RangeValues? calories) {
    _caloriesFilter = calories;
    refreshDatasource();
  }

  final ClientsFakeWebService _repo = ClientsFakeWebService();

  String _sortColumn = "name";
  bool _sortAscending = true;

  void sort(String columnName, bool ascending) {
    _sortColumn = columnName;
    _sortAscending = ascending;
    refreshDatasource();
  }

  Future<int> getTotalRecords() {
    return Future<int>.delayed(
        const Duration(milliseconds: 0), () => _empty ? 0 : _dessertsX3.length);
  }

  @override
  Future<AsyncRowsResponse> getRows(int start, int end) async {
    print('getRows($start, $end)');
    if (_errorCounter != null) {
      _errorCounter = _errorCounter! + 1;

      if (_errorCounter! % 2 == 1) {
        await Future.delayed(const Duration(milliseconds: 1000));
        throw 'Error #${((_errorCounter! - 1) / 2).round() + 1} has occured';
      }
    }

    var index = start;
    final format = NumberFormat.decimalPercentPattern(
      locale: 'en',
      decimalDigits: 0,
    );
    assert(index >= 0);

    // List returned will be empty is there're fewer items than startingAt
    var x = _empty
        ? await Future.delayed(const Duration(milliseconds: 2000),
            () => DesertsFakeWebServiceResponse(0, []))
        : await _repo.getData(
            start, end, _caloriesFilter, _sortColumn, _sortAscending);

    var r = AsyncRowsResponse(
        x.totalRecords,
        x.data.map((dessert) {
          return DataRow(
            key: ValueKey<int>(dessert.id),
            selected: dessert.selected,
            onSelectChanged: (value) {
              if (value != null) {
                setRowSelection(ValueKey<int>(dessert.id), value);
              }
            },
            cells: [
              DataCell(Text(dessert.nomer.toStringAsFixed(1))),
              DataCell(Text('${dessert.lokasi}')),
              DataCell(Text(dessert.post)),
              DataCell(Text('${dessert.status}')),
              DataCell(TextButton(
                child: dessert.button,
                onPressed: () {},
              )),
              // DataCell(Text('${dessert.sodium}')),
              // DataCell(Text(format.format(dessert.calcium / 100))),
              // DataCell(Text(format.format(dessert.iron / 100))),
            ],
          );
        }).toList());

    return r;
  }
}

class DesertsFakeWebServiceResponse {
  DesertsFakeWebServiceResponse(this.totalRecords, this.data);

  /// THe total ammount of records on the server, e.g. 100
  final int totalRecords;

  /// One page, e.g. 10 reocrds
  final List<Client> data;
}

class ClientsFakeWebService {
  int Function(Client, Client)? _getComparisonFunction(
      String column, bool ascending) {
    var coef = ascending ? 1 : -1;
    switch (column) {
      case 'no':
        return (Client d1, Client d2) =>
            coef * (d1.nomer - d2.nomer); //d1.nomer.compareTo(d2.nomer);
      case 'lokasi':
        return (Client d1, Client d2) => coef * d1.lokasi.compareTo(d2.lokasi);
      case 'post':
        return (Client d1, Client d2) => coef * d1.post.compareTo(d2.post);
      case 'status':
        return (Client d1, Client d2) => coef * d1.status.compareTo(d2.status);
      // case '':
      //   return (Client d1, Client d2) =>
      //   coef * d1.button.compareTo(d2.button);
      // case 'sodium':
      //   return (Dessert d1, Dessert d2) => coef * (d1.sodium - d2.sodium);
      // case 'calcium':
      //   return (Dessert d1, Dessert d2) => coef * (d1.calcium - d2.calcium);
      // case 'iron':
      //   return (Dessert d1, Dessert d2) => coef * (d1.iron - d2.iron);
    }

    return null;
  }

  Future<DesertsFakeWebServiceResponse> getData(int startingAt, int count,
      RangeValues? caloriesFilter, String sortedBy, bool sortedAsc) async {
    return Future.delayed(
        Duration(
            milliseconds: startingAt == 0
                ? 2650
                : startingAt < 20
                    ? 2000
                    : 400), () {
      var result = _dessertsX3;

      // if (caloriesFilter != null) {
      //   result = result
      //       .where((e) =>
      //   e.namaClient >= caloriesFilter.start &&
      //       e.namaClient <= caloriesFilter.end)
      //       .toList();
      // }

      result.sort(_getComparisonFunction(sortedBy, sortedAsc));
      return DesertsFakeWebServiceResponse(
          result.length, result.skip(startingAt).take(count).toList());
    });
  }
}

int _selectedCount = 0;

List<Client> _clients = <Client>[
  Client(
    1,
    'Jakarta',
    '09-08-2012',
    'ACTIVE',
    const Text('delete'),
    // 87,
    // 14,
    // 1,
  ),
  Client(
    2,
    'Bogor',
    '09-08-2012',
    'ACTIVE',
    const Text('delete'),
    // 129,
    // 8,
    // 1,
  ),
  Client(
    3,
    'Depok',
    '09-08-2012',
    'INACTIVE',
    const Text('delete'),
    // 337,
    // 6,
    // 7,
  ),
  Client(
    4,
    'Tangerang',
    '09-08-2012',
    'ACTIVE',
    const Text('delete'),
    // 413,
    // 3,
    // 8,
  ),
  Client(
    5,
    'Bekasi',
    '09-08-2012',
    'INACTIVE',
    const Text('delete'),
    // 327,
    // 7,
    // 16,
  ),
  Client(
    6,
    '',
    '',
    '',
    const Text('delete'),
    // 413,
    // 3,
    // 8,
  ),
  Client(
    7,
    '',
    '',
    '',
    const Text('delete'),
    // 413,
    // 3,
    // 8,
  ),
  // Dessert(
  //   'Jelly Bean',
  //   375,
  //   0.0,
  //   94,
  //   0.0,
  //   50,
  //   0,
  //   0,
  // ),
  // Dessert(
  //   'Lollipop',
  //   392,
  //   0.2,
  //   98,
  //   0.0,
  //   38,
  //   0,
  //   2,
  // ),
  // Dessert(
  //   'Honeycomb',
  //   408,
  //   3.2,
  //   87,
  //   6.5,
  //   562,
  //   0,
  //   45,
  // ),
  // Dessert(
  //   'Donut',
  //   452,
  //   25.0,
  //   51,
  //   4.9,
  //   326,
  //   2,
  //   22,
  // ),
  // Dessert(
  //   'Apple Pie',
  //   518,
  //   26.0,
  //   65,
  //   7.0,
  //   54,
  //   12,
  //   6,
  // ),
  // Dessert(
  //   'Frozen Yougurt with sugar',
  //   168,
  //   6.0,
  //   26,
  //   4.0,
  //   87,
  //   14,
  //   1,
  // ),
  // Dessert(
  //   'Ice Cream Sandich with sugar',
  //   246,
  //   9.0,
  //   39,
  //   4.3,
  //   129,
  //   8,
  //   1,
  // ),
  // Dessert(
  //   'Eclair with sugar',
  //   271,
  //   16.0,
  //   26,
  //   6.0,
  //   337,
  //   6,
  //   7,
  // ),
  // Dessert(
  //   'Cupcake with sugar',
  //   314,
  //   3.7,
  //   69,
  //   4.3,
  //   413,
  //   3,
  //   8,
  // ),
  // Dessert(
  //   'Gingerbread with sugar',
  //   345,
  //   16.0,
  //   51,
  //   3.9,
  //   327,
  //   7,
  //   16,
  // ),
  // Dessert(
  //   'Jelly Bean with sugar',
  //   364,
  //   0.0,
  //   96,
  //   0.0,
  //   50,
  //   0,
  //   0,
  // ),
  // Dessert(
  //   'Lollipop with sugar',
  //   401,
  //   0.2,
  //   100,
  //   0.0,
  //   38,
  //   0,
  //   2,
  // ),
  // Dessert(
  //   'Honeycomd with sugar',
  //   417,
  //   3.2,
  //   89,
  //   6.5,
  //   562,
  //   0,
  //   45,
  // ),
  // Dessert(
  //   'Donut with sugar',
  //   461,
  //   25.0,
  //   53,
  //   4.9,
  //   326,
  //   2,
  //   22,
  // ),
  // Dessert(
  //   'Apple pie with sugar',
  //   527,
  //   26.0,
  //   67,
  //   7.0,
  //   54,
  //   12,
  //   6,
  // ),
  // Dessert(
  //   'Forzen yougurt with honey',
  //   223,
  //   6.0,
  //   36,
  //   4.0,
  //   87,
  //   14,
  //   1,
  // ),
  // Dessert(
  //   'Ice Cream Sandwich with honey',
  //   301,
  //   9.0,
  //   49,
  //   4.3,
  //   129,
  //   8,
  //   1,
  // ),
  // Dessert(
  //   'Eclair with honey',
  //   326,
  //   16.0,
  //   36,
  //   6.0,
  //   337,
  //   6,
  //   7,
  // ),
  // Dessert(
  //   'Cupcake with honey',
  //   369,
  //   3.7,
  //   79,
  //   4.3,
  //   413,
  //   3,
  //   8,
  // ),
  // Dessert(
  //   'Gignerbread with hone',
  //   420,
  //   16.0,
  //   61,
  //   3.9,
  //   327,
  //   7,
  //   16,
  // ),
  // Dessert(
  //   'Jelly Bean with honey',
  //   439,
  //   0.0,
  //   106,
  //   0.0,
  //   50,
  //   0,
  //   0,
  // ),
  // Dessert(
  //   'Lollipop with honey',
  //   456,
  //   0.2,
  //   110,
  //   0.0,
  //   38,
  //   0,
  //   2,
  // ),
  // Dessert(
  //   'Honeycomd with honey',
  //   472,
  //   3.2,
  //   99,
  //   6.5,
  //   562,
  //   0,
  //   45,
  // ),
  // Dessert(
  //   'Donut with honey',
  //   516,
  //   25.0,
  //   63,
  //   4.9,
  //   326,
  //   2,
  //   22,
  // ),
  // Dessert(
  //   'Apple pie with honey',
  //   582,
  //   26.0,
  //   77,
  //   7.0,
  //   54,
  //   12,
  //   6,
  // ),
];

List<Client> _dessertsX3 = _clients.toList()
  ..addAll(_clients.map((i) => Client(
      i.nomer, '${i.lokasi} x2', '${i.post} x2', '${i.status} x2', i.button)))
  ..addAll(_clients.map((i) => Client(
      i.nomer, '${i.lokasi} x3', '${i.post} x3', '${i.status} x3', i.button)));

_showSnackbar(BuildContext context, String text, [Color? color]) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: color,
    duration: const Duration(seconds: 1),
    content: Text(text),
  ));
}
// i.sodium, i.calcium, i.iron
// i.sodium, i.calcium, i.iron
