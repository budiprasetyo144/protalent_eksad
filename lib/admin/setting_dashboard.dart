import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:protalent_eksad/api/setting_api.dart';

class SettingDashboard extends StatefulWidget {
  const SettingDashboard({super.key});

  @override
  State<SettingDashboard> createState() => _SettingDashboardState();
}

class _SettingDashboardState extends State<SettingDashboard> {
  String img = 'assets/file/empty.jpg';
  @override
  Future<void> uploadFile() async {
    // TODO: implement upload File
    FilePickerResult? result;
    print('Picker file');
    result = await FilePicker.platform
        .pickFiles(allowMultiple: true, withReadStream: true, withData: false);
    if (result != null) {
      print(result.files.first.name);
      //create
      var req = http.MultipartRequest(
          "POST", Uri.parse("http://10.107.72.92:8081/file"));

      var response = http.get(Uri.parse("http://10.107.72.92:8081/file"));

      List<PlatformFile>? files = result.files;

      if (files != null) {
        print('Add file select with picker');
        for (PlatformFile file in files) {
          //add select with req
          req.files.add(http.MultipartFile("file", file.readStream!, file.size,
              filename: file.name));
          setState(() {
            img = "assets/file/" + file.name;
          });
        }
      }
      // send request
      var resp = await req.send();

      //read response
      String res = await resp.stream.bytesToString();

      //your response
      print(res);
    }
  }

  var btnText = 'Save Setting';
  var enb = true;
  final formKey = GlobalKey<FormState>();
  String id = '';
  String im = '';
  String tt = '';

  String em = '';
  String no = '';
  final String role = 'MCS';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenSize1 = screenSize.width * 0.6;
    return Container(
      color: const Color.fromRGBO(238, 224, 224, 1),
      height: 650,
      padding: const EdgeInsets.only(left: 80),
      width: screenSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          const Text(
            "General Setting",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black, fontSize: 37, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: screenSize.height * 0.75,
            width: screenSize.width * 0.7,
            padding:
            const EdgeInsets.only(left: 30, top: 13, right: 20, bottom: 13),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Site Profile",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal)),


                      FutureBuilder<List<dynamic>>(
                        future: getSettingDesc(),
                        builder: (BuildContext context,
                            AsyncSnapshot snapshot) {
                          var pgm = snapshot.data[0];
                          final mcsController = TextEditingController();
                          return  ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              primary: const Color.fromARGB(255, 0, 67, 192),
                            ),
                            onPressed: () {
                              switch (btnText) {
                                case 'Save Setting':
                                  if(em.isEmpty&&no.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt.toString(), em=pgm['email'].toString(), no=pgm['no'].toString());
                                    print(pgm['idsetting']);
                                    print('if pertama');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Title Success'),backgroundColor: Colors.green,),);
                                  }else if(tt.isEmpty&&no.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt=pgm['title'], em.toString(), no=pgm['no'].toString());
                                    print(pgm['idsetting']);
                                    print('if kedua');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Email Success'),backgroundColor: Colors.green,),);
                                  }else if(tt.isEmpty&&em.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt=pgm['title'], em=pgm['email'].toString(), no.toString());
                                    print('if ketiga');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save No Success'),backgroundColor: Colors.green,),);
                                  }else if(tt.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt=pgm['title'], em.toString(), no.toString());
                                    print('if keempat');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Email and No Success'),backgroundColor: Colors.green,),);

                                  }else if(em.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt.toString(), em=pgm['email'].toString(), no.toString());
                                    print('if kelima');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Title and No Success'),backgroundColor: Colors.green,),);
                                  }else if(no.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt.toString(), em.toString(), no=pgm['no'].toString());
                                    print('if keenam');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Title and Email Success'),backgroundColor: Colors.green,),);
                                  }
                                  createSetting(im.toString(), tt.toString(),
                                      em.toString(), no.toString());
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Data Success'),backgroundColor: Colors.green,),);


                                  setState(() {
                                    btnText = 'Update Setting';
                                    enb = false;
                                  });
                                  break;
                                case 'Update Setting':
                                  setState(() {
                                    enb = true;
                                    btnText = 'Save Update';
                                  });
                                  break;
                                case 'Save Update':
                                  if(em.isEmpty&&no.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt.toString(), em=pgm['email'].toString(), no=pgm['no'].toString());
                                    print(pgm['idsetting']);
                                    print('if pertama');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Title Success'),backgroundColor: Colors.green,),);
                                  }else if(tt.isEmpty&&no.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt=pgm['title'], em.toString(), no=pgm['no'].toString());
                                    print(pgm['idsetting']);
                                    print('if kedua');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Email Success'),backgroundColor: Colors.green,),);
                                  }else if(tt.isEmpty&&em.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt=pgm['title'], em=pgm['email'].toString(), no.toString());
                                    print('if ketiga');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save No Success'),backgroundColor: Colors.green,),);
                                  }else if(tt.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt=pgm['title'], em.toString(), no.toString());
                                    print('if keempat');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Email and No Success'),backgroundColor: Colors.green,),);

                                  }else if(em.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt.toString(), em=pgm['email'].toString(), no.toString());
                                    print('if kelima');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Title and No Success'),backgroundColor: Colors.green,),);
                                  }else if(no.isEmpty){
                                    updateSetting(id=pgm['idsetting'].toString(), tt.toString(), em.toString(), no=pgm['no'].toString());
                                    print('if keenam');
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Title and Email Success'),backgroundColor: Colors.green,),);
                                  }
                                  createSetting(im.toString(), tt.toString(),
                                      em.toString(), no.toString());
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Data Success'),backgroundColor: Colors.green,),);


                                  break;
                                default:
                              }
                            },
                            child: Text(
                              btnText,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          );
                        },
                      ),

                    ],
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    // indent: 20,
                    // endIndent: 0,
                    color: Colors.grey,
                  ),
                  // Text('Data Must Be Edited'),
                  // Text(
                  //     'For data that is not modified, Please copy last data , delete then paste again'),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 220,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Site icon",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: 150,
                              child: Image.asset('$img'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                                height: 30,
                                width: 100,
                                child: ElevatedButton(
                                    onPressed: uploadFile,
                                    //     () async {
                                    //   final imagePicker = await ImagePickerPlugin()
                                    //       .pickImage(source: ImageSource.gallery,imageQuality: 20);
                                    //
                                    //   if(imagePicker != null){
                                    //     final file = File(imagePicker.path);
                                    //     final result = await FileApi.upload(file);
                                    //
                                    //     final String imgPath = result['filePath'];
                                    //
                                    //     setState(() {
                                    //       img = imgPath;
                                    //     });
                                    //   }
                                    // },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      primary: Colors.white,
                                      // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                                    ),
                                    child: const Text(
                                      "Change",
                                      style: TextStyle(color: Colors.black),
                                    ))),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: 30,
                                width: 100,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      primary: Colors.white,
                                      // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                                    ),
                                    child: const Text(
                                      "Remove",
                                      style: TextStyle(color: Colors.red),
                                    )))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width * 0.05,
                      ),
                      Container(
                        height: 220,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Site title",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              width: screenSize1 * 0.5,
                              child: FutureBuilder<List<dynamic>>(
                                future: getSettingDesc(),
                                builder: (BuildContext context,
                                    AsyncSnapshot snapshot) {
                                  var pgm = snapshot.data[0];
                                  final mcsController = TextEditingController();

                                  if (snapshot.hasError ||
                                      snapshot.data == null ||
                                      snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                    return const CircularProgressIndicator();
                                  }
                                  return TextFormField(
                                    initialValue: pgm['title'],
                                    decoration: const InputDecoration(
                                        labelText: "Protalent",
                                        hintStyle: TextStyle(),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.grey))),
                                    onChanged: (value) => tt = value,
                                    enabled: enb,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // const Text(
                            //   "Site tagline",
                            //   style: TextStyle(
                            //       color: Colors.black,
                            //       fontSize: 17,
                            //       fontWeight: FontWeight.bold),
                            // ),
                            const SizedBox(
                              height: 7,
                            ),
                            // Container(
                            //   height: 40,
                            //   width: screenSize1 * 0.5,
                            //   child: TextFormField(
                            //     decoration: const InputDecoration(
                            //         labelText: "Cloud Partner with Eksad",
                            //         hintStyle: TextStyle(),
                            //         border: OutlineInputBorder(
                            //             borderSide: BorderSide(
                            //                 width: 1, color: Colors.grey))),
                            //     onChanged: (value) => tl = value,
                            //     enabled: enb,
                            //   ),
                            // ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                                "In a few words, explain what this site is about.",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  FutureBuilder<List<dynamic>>(
                    future: getSettingDesc(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      var pgm = snapshot.data[0];
                      if (snapshot.hasError ||
                          snapshot.data == null ||
                          snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      }
                      return Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Email address",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                width: screenSize1 * 0.5,
                                child: TextFormField(
                                  initialValue: pgm['email'],
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey[200],
                                      labelText: "xxxxxx@eksad.com",
                                      hintStyle: const TextStyle(),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.grey))),
                                  onChanged: (value) => em = value,
                                  enabled: enb,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "No Office",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                width: screenSize1 * 0.5,
                                child: TextFormField(
                                  initialValue: pgm['no'],
                                  decoration: const InputDecoration(
                                      labelText: "02x-xxxx-xxxx",
                                      hintStyle: TextStyle(),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.grey))),
                                  onChanged: (value) => no = value,
                                  enabled: enb,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                          // const SizedBox(
                          //   width: 30,
                          // ),
                        ],
                      );
                    },
                  ),

                  // const Spacer(
                  //   flex: 20,
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
