import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpansionOurServices2 extends StatefulWidget {
  State<ExpansionOurServices2> createState() => _ExpansionOurServices2State();
}

class _ExpansionOurServices2State extends State<ExpansionOurServices2> {
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ExpansionPanelList.radio(
          initialOpenPanelValue: 'Developer',
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = isExpanded;
            });
          },
          children: items.map((ExpansionpanelItem item) {
            return ExpansionPanelRadio(
              backgroundColor: Colors.grey[200],
              canTapOnHeader: true,
              value: item.title,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  leading: item.leading,
                  title: Text(
                    item.title,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
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
      title: 'Developer',
      content: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: <Widget>[
            _posisi('Frontend Developer'),
            _posisi('Backend Developer'),
            _posisi('Mobile Developer'),
            _posisi('Full Stack Developer'),
          ],
        ),
      ),
      leading: const Icon(Icons.computer)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'DevOps',
      content: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: <Widget>[
            _posisi('DevOps Engineer'),
          ],
        ),
      ),
      leading: const Icon(Icons.change_circle_sharp)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Database',
      content: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: <Widget>[
            _posisi('Database Engineer'),
            _posisi('Data Analyst'),
            _posisi('Data Integrator'),
            _posisi('BI Developer'),
          ],
        ),
      ),
      leading: const Icon(Icons.dataset_linked_sharp)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Others',
      content: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: <Widget>[
            _posisi('Project Manager'),
            _posisi('Quality Assurance'),
            _posisi('Business Analyst'),
            _posisi('Technical Writer'),
          ],
        ),
      ),
      leading: const Icon(Icons.account_circle)),
];

ListTile _posisi(String namaposisi) {
  return ListTile(
    leading: Container(
      padding: const EdgeInsets.only(top: 7),
      child: const Icon(
        Icons.circle,
        size: 10,
        color: Colors.black,
      ),
    ),
    title: Text(
      namaposisi,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500, fontSize: 16, letterSpacing: 1.2),
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
