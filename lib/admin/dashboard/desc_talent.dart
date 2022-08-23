import 'package:flutter/material.dart';
import 'package:protalent_eksad/const/text_dashboard.dart';
import 'package:protalent_eksad/admin/dashboard.dart';

class SelectTalent extends StatelessWidget {
  const SelectTalent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Container(
          child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  ),
                  //color: Color.fromARGB(200, 9, 47, 171),
                  color: const Color.fromARGB(200, 179, 183, 197),
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 10, 116, 255).withAlpha(60),
                      blurRadius: 15.0,
                      spreadRadius: 10.0,
                      offset: const Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: 20, child: const Text('')),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(bottom: 5),
                            width: 300,
                            height: 70,
                            child: Column(
                              children: const [
                                Text(
                                  'Fahrur',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Full Stack Java Development',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black),
                                ),
                              ],
                            )),

                        // Container(
                        //   padding: EdgeInsets.only(top: 5),
                        //     width:300,
                        //     height: 30,
                        //     child: Text('Full Stack JavaScript Development',
                        //         style: TextStyle(
                        //             fontSize: 17,
                        //             color: Colors.black),),
                        // ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 2),
                      width: 180,
                      height: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logo/logo_protalent.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 380,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 520,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 35, top: 15),
                            width: 500,
                            child: const Text('Work Experience',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2)),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15),
                            width: 490,
                            height: 260,
                            child: Column(
                              children: [
                                _workexp('PT. Selamat Sejahtera Sentosa',
                                    'Jakarta Selatan', 'Mar 2015 - Mar 2018'),
                                _workexp('Fahrur Tekstil Indonesia',
                                    'Jakarta Selatan', 'Apr 2018 - Juli 2022'),
                                _workexp('Tokopedia', 'Jakarta Pusat',
                                    'Juli 2022 - Sep 2022'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 780,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            //color: Colors.red,
                          ),
                          Container(
                            height: 35,
                            //color: Colors.grey,
                            child: Text(
                              job2 + ' | ' + job3,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          _rowpekerjaan('Level', deskripsi),
                          _rowpekerjaan('Spesialisasi', deskripsi),
                          _rowpekerjaan('Bidang Pekerjaan', deskripsi),
                          _rowpekerjaan('Tingkat Jabatan', deskripsi),

                          //SPASI

                          Container(
                            height: 30,
                            //color: Colors.red,
                          ),
                          Container(
                            width: 350,
                            height: 35,
                            //color: Colors.grey,
                            child: const Text(
                              'Biodata',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                          ),
                          _rowpekerjaan('Nama', deskripsi),
                          _rowpekerjaan('Umur', deskripsi),
                          _rowpekerjaan('Jenis Kelamin', deskripsi),
                          _rowpekerjaan('Alamat ', deskripsi)

                          // _rowdeskripsi(deskripsis),
                          // _rowdeskripsi(deskripsis),
                          // _rowdeskripsi(deskripsis),
                          // _rowdeskripsi(deskripsis)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 1270,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(200, 179, 183, 197),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(200, 128, 132, 143)
                          .withAlpha(60),
                      blurRadius: 15.0,
                      spreadRadius: 15.0,
                      offset: const Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 505,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 35, top: 15),
                            width: 505,
                            height: 55,
                            //color: Colors.red,
                            child: const Text('Education',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2)),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            width: 490,
                            // color: Colors.white,
                            child: Column(
                              children: [
                                _edukasi('Eksad University', 'Sarjana 1',
                                    'Apr 2018 - Juni 2022'),
                                _edukasi('Eksad University', 'Sarjana 1',
                                    'Apr 2018 - Juni 2022'),
                                _edukasi('Eksad University', 'Sarjana 1',
                                    'Apr 2018 - Juni 2022'),
                                _edukasi('Eksad University', 'Sarjana 1',
                                    'Apr 2018 - Juni 2022'),
                                _edukasi('Eksad University', 'Sarjana 1',
                                    'Apr 2018 - Juni 2022'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 15, left: 30),
                            width: 750,
                            height: 50,
                            //color: Colors.red,
                            child: const Text('Skills',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2)),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                width: 400,
                                child: Column(
                                  children: [
                                    _skills('Flutter Developer'),
                                    _skills('Java Developer'),
                                    _skills('React Native Developer'),
                                    _skills('Mobile Developer'),
                                  ],
                                ),
                              ),
                              Container(
                                width: 330,
                                child: Column(
                                  children: [
                                    _tempat('Bootcamp Flutter by Eksad'),
                                    _tempat('Bootcamp Java by Eksad'),
                                    _tempat('Bootcamp React by Eksad'),
                                    _tempat('Bootcamp Mobile by Eksad'),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 1200,
                height: 100,
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 60, left: 8),
            width: 260,
            height: 210,
            //color: Colors.blueAccent,
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/petrik.png'),
                        fit: BoxFit.contain),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10),
                width: 90,
                height: 35,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Back',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                width: 120,
                height: 35,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download_rounded,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'Download',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

ListTile _workexp(String _perusahaan, String _lokasi, String _tanggal) {
  return ListTile(
    title: Row(
      children: [
        Text(
          _perusahaan,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, height: 1.5),
        ),
        Text(
          ' ,  ' + _lokasi,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, height: 1.5),
        ),
      ],
    ),
    subtitle: Text(_tanggal),
  );
}

ListTile _edukasi(String _pengalaman, String _tingkat, String _tanggal) {
  return ListTile(
    minLeadingWidth: 8,
    leading: Container(
        padding: const EdgeInsets.only(top: 7),
        child: const Icon(
          Icons.circle,
          size: 12,
          color: Colors.black,
        )),
    title: Text(
      _pengalaman,
      style: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 17, height: 1.5),
    ),
    subtitle: Text(_tingkat),
    trailing: Text(_tanggal),
  );
}

ListTile _skills(String skill) {
  return ListTile(
    minLeadingWidth: 8,
    leading: Container(
        padding: const EdgeInsets.only(top: 7),
        child: const Icon(
          Icons.circle,
          size: 12,
          color: Colors.black,
        )),
    title: Text(
      skill,
      style: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 20, height: 1.5),
    ),
  );
}

ListTile _tempat(String tempat) {
  return ListTile(
    title: Text(
      tempat,
      style: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 20, height: 1.5),
    ),
    trailing: const Icon(
      Icons.download_for_offline_outlined,
      color: Colors.black,
    ),
  );
}

Row _rowpekerjaan(String _job, String _jabatan) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.only(left: 15),
        width: 180,
        height: 20,
        child: Text(_job, style: const TextStyle(fontSize: 16)),
      ),
      Container(
        padding: const EdgeInsets.only(top: 3),
        height: 25,
        child: Text(': ' + _jabatan),
      )
    ],
  );
}

Row _rowdeskripsi(String _deskripsi) {
  return Row(
    children: [
      Container(
        width: 15,
        child: const Icon(
          Icons.circle,
          size: 12,
          color: Colors.black,
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 7, top: 5),
        width: 765,
        height: 25,
        child: Text(deskripsis),
      ),
    ],
  );
}

ListTile _language(String _bahasa, String _rangeint, String _rangeint2) {
  return ListTile(
    title: Text(
      _bahasa,
      style: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 17, height: 1.5),
    ),
    subtitle: Text(
      'Bicara: ' + _rangeint + " | " + ' Menulis: ' + _rangeint2,
      style: const TextStyle(fontSize: 15),
    ),
  );
}

// Column _workexp(String _perusahaan, String _tanggal) {
//   return Column(
//     children: [
//       Container(
//         padding: EdgeInsets.only(top: 5),
//         height: 25,
//         child: Text(_perusahaan,
//             style: TextStyle(
//                 fontSize: 15, fontWeight: FontWeight.bold, height: 1.5)),
//       ),
//       Container(
//         height: 17,
//         padding: EdgeInsets.only(top: 2,),
//         child: Text(_tanggal),
//       )
//     ],
//   );
// }
