import 'package:flutter/material.dart';

class Expansionpanel extends StatefulWidget {
  Expansionpaneltate createState() => Expansionpaneltate();
}

class Expansionpaneltate extends State<Expansionpanel> {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ExpansionPanelList.radio(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = isExpanded;
            });
          },
          children: items.map((ExpansionpanelItem item) {
            return ExpansionPanelRadio(
              value: item.title,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                    leading: item.leading,
                    title: Text(
                      item.title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ));
              },
              //isExpanded: item.isExpanded,
              body: item.content,
            );
          }).toList(),
        ),
      ),
    );
  }
}

List<ExpansionpanelItem> items = <ExpansionpanelItem>[
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Software Engineering',
      content: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 20),
          child: Column(children: <Widget>[
            _judulposisi(),
            _posisi('Backend Engineer'),
            _posisi('Frontend Engineer'),
            _posisi('DevOps Engineer'),
            _posisi('IT Consultant'),
            _posisi('Fullstack Engineer'),
            _posisi('Tester Engineer'),
            _posisi('Mobile Engineer'),
          ])),
      leading: const Icon(Icons.computer)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Product Management',
      content: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 20),
          child: Column(children: <Widget>[
            _judulposisi(),
            _posisi('Product Marketing'),
            _posisi('Product Management'),
            _posisi('Project Management'),
            _posisi('Product Design'),
          ])),
      leading: const Icon(Icons.manage_accounts)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Marketing & Communications',
      content: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 20),
          child: Column(children: <Widget>[
            _judulposisi(),
            _posisi('Social Media'),
            _posisi('Public Relations'),
            _posisi('Graphic Designer'),
          ])),
      leading: const Icon(Icons.comment_outlined)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Data Science',
      content: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 20),
          child: Column(children: <Widget>[
            _judulposisi(),
            _posisi('Database Engineer'),
            _posisi('Engineer'),
            _posisi('Business Intelligence'),
            _posisi('Statistician/Scientist'),
          ])),
      leading: const Icon(Icons.table_rows)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Sales',
      content: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 20),
          child: Column(children: <Widget>[
            _judulposisi(),
            _posisi('Business Development (B2B)'),
            _posisi('Business Development (B2C)'),
            _posisi('International Sales'),
          ])),
      leading: const Icon(Icons.shopping_cart)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Human Resources',
      content: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 20),
          child: Column(children: <Widget>[
            _judulposisi(),
            _posisi('Recruitment'),
            _posisi('Training & Development'),
            _posisi('Business Partner'),
          ])),
      leading: const Icon(Icons.people)),
];

Container _judulposisi() {
  return Container(
    width: 1400,
    child: const Text(
      'Position: ',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

ListTile _posisi(String namaposisi) {
  return ListTile(
    leading: Container(
        padding: const EdgeInsets.only(top: 7),
        child: const Icon(
          Icons.circle,
          size: 10,
          color: Colors.black,
        )),
    title: Text(
      namaposisi,
      style: const TextStyle(
          fontWeight: FontWeight.w500, fontSize: 15, height: 1.5),
    ),
  );
}

class ExpansionpanelItem {
  ExpansionpanelItem(
      {required this.isExpanded,
      required this.title,
      required this.content,
      required this.leading});
  bool isExpanded;
  final String title;
  final Widget content;
  final Icon leading;
}
