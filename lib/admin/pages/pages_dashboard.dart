import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/api/page_api.dart';

class PagesDashboard extends StatefulWidget {
  const PagesDashboard({Key? key}) : super(key: key);

  @override
  State<PagesDashboard> createState() => _PagesDashboardState();
}

class _PagesDashboardState extends State<PagesDashboard> {
  final formKey = GlobalKey<FormState>();

  int id = 0;
  String nm = '';
  String pg = '';
  String selectname = '';
  String selectpage = '';

  int selectedIndex = 0;

  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 2000,
      width: screenSize.width,
      padding: const EdgeInsets.only(left: 80, right: 80),
      color: const Color.fromRGBO(238, 224, 224, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'Pages    ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
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
                        title: const Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.file_copy,
                              color: Colors.black,
                            ),
                            title: Text(
                              'ADD NEW PAGES',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 19),
                            ),
                          ),
                        ),
                        content: Form(
                          key: formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            verticalDirection: VerticalDirection.down,
                            children: [
                              Container(
                                width: 200,
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    labelText: "Masukkan Nama",
                                    hintStyle: const TextStyle(),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                  ),
                                  onChanged: (value) => nm = value,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: 200,
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  maxLines: 7,
                                  decoration: InputDecoration(
                                    labelText: "Masukkan Keterangan",
                                    hintStyle: const TextStyle(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                  onChanged: (value) => pg = value,
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.black,
                              backgroundColor:
                                  const Color.fromARGB(255, 16, 199, 71),
                              textStyle: const TextStyle(fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.pop(context);

                              if (nm.isEmpty && pg.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Data Can\'t Be Empty')),
                                );
                              } else if (pg.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Content Can\'t Be Empty')),
                                );
                              } else if (nm.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Name Can\'t Be Empty')),
                                );
                              } else {
                                createPage(nm, pg).then(
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
                              }
                            },
                            child: const Text('save'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text('Add Pages'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: screenSize.height * 0.65,
            child: ListView(
              controller: ScrollController(),
              children: [
                FutureBuilder<List<dynamic>>(
                  future: getPage(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError ||
                        snapshot.data == null ||
                        snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }
                    return DataTable(
                      decoration: const BoxDecoration(color: Colors.white),
                      columnSpacing: 105,
                      columns: const [
                        DataColumn(label: Text('Id')),
                        DataColumn(label: Text('Title')),
                        DataColumn(label: Text('Page')),
                        DataColumn(label: Text('Status')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: List.generate(
                        snapshot.data.length,
                        (index) {
                          var pgm = snapshot.data[index];
                          return DataRow(
                            cells: [
                              DataCell(
                                Text(pgm['idPage'].toString()),
                              ),
                              DataCell(
                                Text(pgm['title']),
                              ),
                              DataCell(
                                Text(pgm['page']),
                              ),
                              DataCell(
                                Text(pgm['status']),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        var pgm = snapshot.data[index];
                                        selectedIndex = index;
                                        id = pgm['idPage'];
                                        selectname = pgm['title'];
                                        selectpage = pgm['page'];
                                        print(selectedIndex);
                                        print(pgm['idPage']);
                                        print(selectname);

                                        _controllerName.clear();
                                        // _controllerId.clear();
                                        _controllerPage.clear();
                                        showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            title: const Center(
                                                child: Text('Update Pages')),
                                            content: Form(
                                              key: formKey,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                children: [
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    'Data Harus di Edit*',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.red),
                                                  ),
                                                  const SizedBox(
                                                    height: 15,
                                                  ),
                                                  Center(
                                                    child: Container(
                                                      width: 200,
                                                      child: TextFormField(
                                                        //controller: _controllerName,

                                                        textAlign:
                                                            TextAlign.start,
                                                        initialValue:
                                                            selectname,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'Masukkan Nama Pages Baru',
                                                          //labelStyle: TextStyle(),

                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0)),
                                                        ),

                                                        onChanged: (value) =>
                                                            nm = value,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 40,
                                                  ),
                                                  Center(
                                                    child: Container(
                                                      width: 200,
                                                      child: TextFormField(
                                                        //controller: _controllerPage,
                                                        textAlign:
                                                            TextAlign.start,
                                                        initialValue:
                                                            selectpage,
                                                        maxLines: 7,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              "Masukkan Keterangan",
                                                          hintStyle:
                                                              const TextStyle(),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                        ),
                                                        onChanged: (value) =>
                                                            pg = value,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  primary: Colors.black,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 16, 199, 71),
                                                  textStyle: const TextStyle(
                                                      fontSize: 15),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);

                                                  if (nm.isEmpty &&
                                                      pg.isEmpty) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Data Can\'t Be Empty')),
                                                    );
                                                  } else if (pg.isEmpty) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Content Can\'t Be Empty')),
                                                    );
                                                  } else if (nm.isEmpty) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Name Can\'t Be Empty')),
                                                    );
                                                  } else {
                                                    updatePage(id, nm, pg).then(
                                                      (isSuccess) {
                                                        if (isSuccess) {
                                                          setState(() {});
                                                          Scaffold.of(
                                                                  this.context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                  "Data success"),
                                                            ),
                                                          );
                                                        } else {
                                                          Scaffold.of(
                                                                  this.context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                  "Data failed!!!"),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                    );
                                                  }
                                                },
                                                child: const Text('Update'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      child: const Text('Edit Page'),
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16.0),
                                        primary: Colors.white,
                                        backgroundColor: const Color.fromARGB(
                                            200, 23, 104, 210),
                                        textStyle:
                                            const TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16.0),
                                        primary: Colors.white,
                                        backgroundColor: const Color.fromARGB(
                                            255, 245, 27, 27),
                                        textStyle:
                                            const TextStyle(fontSize: 15),
                                      ),
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text("Warning"),
                                              content: Text(
                                                  "Are you sure want to delete data page ${pgm['title']}?"),
                                              actions: <Widget>[
                                                TextButton(
                                                  child: const Text("Yes"),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    deletePage(pgm['idPage'])
                                                        .then((isSuccess) {
                                                      if (isSuccess) {
                                                        setState(() {});
                                                        Scaffold.of(
                                                                this.context)
                                                            .showSnackBar(
                                                                const SnackBar(
                                                                    content: Text(
                                                                        "Delete data success")));
                                                      } else {
                                                        Scaffold.of(
                                                                this.context)
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
                                      },
                                      child: const Text("Delete"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ).toList(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
