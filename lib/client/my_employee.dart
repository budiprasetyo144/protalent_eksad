import 'package:flutter/material.dart';

class MyEmployee extends StatefulWidget {
  const MyEmployee({Key? key}) : super(key: key);

  @override
  State<MyEmployee> createState() => _MyEmployeeState();
}

class _MyEmployeeState extends State<MyEmployee> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenSize1 = screenSize.width * 0.8;
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "My Employee",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    //Text("13 results found"),
                  ],
                ),

                Container(
                  width: 200,
                  child: Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: screenSize1 * 0.5,
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Icon(Icons.search),
                // ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            width: screenSize.width,
            child: Row(
              children: [
                SizedBox(
                    width: screenSize.width * 0.3, child: const Text("Name")),
                SizedBox(
                    width: screenSize.width * 0.2, child: const Text("Status")),
                SizedBox(
                    width: screenSize.width * 0.3,
                    child: const Text("Position")),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: screenSize.width,
            color: Colors.white,
            child: ListView(controller: ScrollController(), children: [
              ListProfil(
                screenSize: screenSize,
                nama: "Ade Fikriatul Ilmi",
                status: "Pre-Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Fahrur",
                status: "Pre-Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Arham",
                status: "Pre-Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Manik",
                status: "Pre-Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Maharani",
                status: "Pre-Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Rizki",
                status: "Pre-Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Faid",
                status: "Pre-Hired",
                posisi: "Java Developer",
              ),
              ListProfil(
                screenSize: screenSize,
                nama: "Qorri",
                status: "Pre-Hired",
                posisi: "Java Developer",
              ),
            ]),
          ))
        ],
      ),
    );
  }
}

class ListProfil extends StatelessWidget {
  const ListProfil(
      {Key? key,
      required this.screenSize,
      required this.nama,
      required this.posisi,
      required this.status})
      : super(key: key);

  final Size screenSize;
  final String nama;
  final String status;
  final String posisi;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
              width: screenSize.width * 0.3,
              child: Row(
                children: [
                  const CircleAvatar(
                    foregroundImage: AssetImage("assets/images/petrik.png"),
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(nama)
                ],
              )),
          SizedBox(width: screenSize.width * 0.2, child: Text(status)),
          SizedBox(width: screenSize.width * 0.3, child: Text(posisi)),
        ],
      ),
    );
  }
}
