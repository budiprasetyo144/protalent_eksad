import 'package:flutter/material.dart';

import '../conts_warna.dart';

class botton_tombol2 extends StatelessWidget {
  const botton_tombol2({
    Key? key,
    required this.title,
    required this.arah,
  }) : super(key: key);
  final String title;
  final Widget arah;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            side: const BorderSide(width: 1, color: kPrimaryColor),
            primary: Colors.white),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => arah));
        },
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 17, color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Botton_tombol extends StatelessWidget {
  Botton_tombol({
    Key? key,
    required this.title,
    required this.arah,
  }) : super(key: key);

  final String title;
  final Widget arah;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          primary: const Color.fromARGB(255, 0, 36, 192),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => arah));
        },
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class AlertForm extends StatefulWidget {
  const AlertForm({Key? key}) : super(key: key);

  @override
  State<AlertForm> createState() => _AlertFormState();
}

class _AlertFormState extends State<AlertForm> {
  late TextEditingController controller;
  String posisi = '';

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    void publish() {
      Navigator.of(context).pop(controller.text);
    }

    Future openDialog() => showDialog<String>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Add Talent'),
            titlePadding: const EdgeInsets.only(top: 40, left: 30),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Full Name",
                          hintStyle: const TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Age",
                          hintStyle: const TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Gender",
                          hintStyle: const TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Work Experience",
                          hintStyle: const TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Expected Salary",
                          hintStyle: const TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Latest Position",
                          hintStyle: const TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Latest Company",
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Salary Status",
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Latest Work Period",
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Work Location",
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                // Container(
                //     child: IconButton(
                //         onPressed: () {},
                //         icon: Icon(
                //           Icons.add_photo_alternate,
                //           size: 35,
                //           color: Colors.grey,
                //         )))
              ],
            ),
            actions: [
              ElevatedButton(onPressed: () {}, child: const Text('SAVE'))
            ],
          ),
        );
    return Row(
      children: [
        Container(
            child: ElevatedButton.icon(
          icon: const Icon(
            Icons.person_add,
            size: 20.0,
          ),
          label: const Text('Add Talent'),
          onPressed: () async {
            final posisi = await openDialog();
            if (posisi == null || posisi.isEmpty) return;
            setState(() => this.posisi = posisi);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
          ),
        )),
      ],
    );
  }
}

class ButtonAppbar extends StatelessWidget {
  const ButtonAppbar(
      {Key? key, required this.arah, required this.menu, required this.warna})
      : super(key: key);
  final String menu;
  final Widget arah;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => arah,
            ),
          );
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered))
              // ignore: curly_braces_in_flow_control_structures
              return Colors.blue;
            return warna; // null throus error in flutter 2.2+.
          }),
        ),
        child: Text(
          menu,
          style: const TextStyle(
            fontSize: 19,
            letterSpacing: 1.3,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class ButtonAppbar_baru extends StatelessWidget {
  const ButtonAppbar_baru(
      {Key? key, required this.arah, required this.menu, required this.warna})
      : super(key: key);
  final String menu;
  final String arah;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, arah);
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered))
              // ignore: curly_braces_in_flow_control_structures
              return Colors.blue;
            return warna; // null throus error in flutter 2.2+.
          }),
        ),
        child: Text(
          menu,
          style: const TextStyle(
            fontSize: 18,
            letterSpacing: 1.1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
