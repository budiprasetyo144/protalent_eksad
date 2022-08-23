import 'package:flutter/material.dart';

class ExpansionHome4 extends StatefulWidget {
  State<ExpansionHome4> createState() => _ExpansionHome4State();
}

class _ExpansionHome4State extends State<ExpansionHome4> {
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ExpansionPanelList.radio(
          initialOpenPanelValue: 'Financial Services',
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = !items[index].isExpanded;
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
                  selectedColor: Colors.red,
                  title: Text(
                    item.title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 16,
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
      title: 'Non Financial Services',
      content: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(children: <Widget>[
            _posisi('Ritel'),
            _posisi('Consumer packaged goods'),
            _posisi('Manufacturing'),
            _posisi('Automotive'),
            _posisi('Supply chain and logistics'),
            _posisi('Energy'),
            _posisi('Healthcare and life sciences'),
            _posisi('Media and entertainment'),
            _posisi('Gaming'),
            _posisi('Telecomunications'),
          ])),
      leading: const Icon(Icons.computer)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Financial Services',
      content: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(children: <Widget>[
            _posisi('Banking'),
            _posisi('Multifinance'),
            _posisi('Fintech'),
            _posisi('Financial Lending'),
          ])),
      leading: const Icon(Icons.manage_accounts)),
  ExpansionpanelItem(
      isExpanded: false,
      title: 'Goverment and public sector',
      content: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(children: <Widget>[
            _posisi('Goverment'),
            _posisi('State and local goverment'),
            _posisi('Education'),
            _posisi('Education technology'),
          ])),
      leading: const Icon(Icons.comment_outlined)),
];

ListTile _posisi(String namaposisi) {
  return ListTile(
    leading: const Icon(
      Icons.circle,
      size: 10,
      color: Colors.black,
    ),
    title: Text(
      namaposisi,
      style: const TextStyle(
          fontWeight: FontWeight.w500, fontSize: 15, letterSpacing: 1.2),
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
