import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protalent_eksad/api/sosmed_api.dart';

class SosmedDashboard extends StatefulWidget {
  const SosmedDashboard({Key? key}) : super(key: key);

  @override
  State<SosmedDashboard> createState() => _SosmedDashboardState();
}

class _SosmedDashboardState extends State<SosmedDashboard> {
  var btnText = 'Save Setting';
  var enb = true;
  final formKey = GlobalKey<FormState>();

 // TextEditingController waController = new TextEditingController();


  String wa = '';
  String ln = '';
  String tw ='';
  String ig = '';
  String yt = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromRGBO(238, 224, 224, 1),
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.05,
          vertical: screenSize.height * 0.05),
      child: Container(
        width: screenSize.width,
        height: screenSize.height * 0.8,
        padding:
            const EdgeInsets.only(left: 30, top: 15, right: 30, bottom: 15),
        color: Colors.white,
        child: Form(
          key: formKey,
          child:
          FutureBuilder<List<dynamic>>(
            future: getSosmedDesc(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              var pgm = snapshot.data[0];
              final waController = TextEditingController(text: pgm['whatsapp'].toString());
              final linkedController = TextEditingController(text: pgm['linkedin'].toString());
              final twitterController = TextEditingController(text: pgm['twitter'].toString());
              final igController = TextEditingController(text: pgm['instagram'].toString());
              final youtubeController = TextEditingController(text: pgm['youtube'].toString());
              if (snapshot.hasError ||
                  snapshot.data == null ||
                  snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Social Media Setting",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.1)),

                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      listsosmed2(
                          Icon(
                            Icons.whatsapp,
                            color: Colors.green,
                          ),
                          TextFormField(
                            controller: waController,
                            decoration: InputDecoration(
                                helperText:
                                'Enter WhatsApp number without +,   Ex : 6280000000000 '),

                          //  onChanged: (value) => wa = value,
                            enabled: enb,
                          ),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       showDialog(
                          //         context: context,
                          //         builder: (BuildContext context)=>
                          //             AlertDialog(
                          //               content:Text('Active WA : '+pgm['whatsapp']),
                          //             ) ,
                          //       );
                          //     }, child: Text('View Active')),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      listsosmed2(
                          Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                          ),
                          TextFormField(
                            controller: linkedController,
                            decoration: InputDecoration(
                                hintText: 'Enter a new Linkedin link address'),
                         //   onChanged: (value) => ln = value,
                            enabled: enb,
                          ),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       showDialog(
                          //         context: context,
                          //         builder: (BuildContext context)=>
                          //             AlertDialog(
                          //               content:Text('Active Linkedin : '+pgm['linkedin']),
                          //             ) ,
                          //       );
                          //     }, child: Text('View Active')),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      listsosmed2(
                          Icon(
                            FontAwesomeIcons.twitterSquare,
                            color: Colors.blueAccent,
                          ),
                          TextFormField(
                            controller: twitterController,
                            decoration: InputDecoration(
                                hintText: 'Enter a new Twitter link address'),
                          //  onChanged: (value) => tw = value,
                            enabled: enb,
                          ),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       showDialog(
                          //         context: context,
                          //         builder: (BuildContext context)=>
                          //             AlertDialog(
                          //               content:Text('Active Twitter : '+pgm['twitter']),
                          //             ) ,
                          //       );
                          //     }, child: Text('View Active'))
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      listsosmed2(
                          Icon(
                            FontAwesomeIcons.instagramSquare,
                            color: Colors.pink,
                          ),
                          TextFormField(
                            controller: igController,
                            decoration: InputDecoration(
                                hintText: 'Enter a new Instagram link address'),
                          //  onChanged: (value) => ig = value,
                            enabled: enb,
                          ),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       showDialog(
                          //         context: context,
                          //         builder: (BuildContext context)=>
                          //             AlertDialog(
                          //                 content:Text('Active Instagram : '+pgm['instagram'])
                          //             ) ,
                          //       );
                          //     }, child: Text('View Active'))
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      listsosmed2(
                          Icon(
                            FontAwesomeIcons.youtube,
                            color: Colors.red,
                          ),
                          TextFormField(
                            controller: youtubeController,
                            decoration: InputDecoration(
                                hintText: 'Enter a new Youtube link address'),
                         //   onChanged: (value) => yt = value,
                            enabled: enb,
                          ),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       showDialog(
                          //         context: context,
                          //         builder: (BuildContext context)=>
                          //             AlertDialog(
                          //               content:Text('Active Youtube : '+pgm['youtube']),
                          //             ) ,
                          //       );
                          //     }, child: Text('View Active')),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          primary: const Color.fromARGB(255, 0, 67, 192),
                        ),
                        onPressed: () {
                          switch (btnText) {
                            case 'Save Setting':

                              updateSosmed(
                                  pgm['idSettingSosmed'],
                                  waController.value.text,
                                  linkedController.value.text,
                                  twitterController.value.text,
                                  igController.value.text,
                                  youtubeController.value.text);
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Data Success'),));
                              }


                              setState(() {
                                btnText = 'Update Setting';
                                enb = false;
                              }

                              );
                              break;
                            case 'Update Setting':

                              setState(() {
                                enb = true;
                                btnText = 'Save Update';
                              });
                              break;
                            case 'Save Update':
                              updateSosmed(
                                  pgm['idSettingSosmed'],
                                  waController.value.text,
                                  linkedController.value.text,
                                  twitterController.value.text,
                                  igController.value.text,
                                  youtubeController.value.text);
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Data Success'),));
                              }
                              break;
                            default:
                            //  createSosmed(wa, ln, tw, ig, yt);
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Save Data Success'),));
                              }
                          }
                        },
                        child: Text(
                          btnText,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),

                ],
              );
            },
          ),

        ),
      ),
    );
  }
}

ListTile listsosmed(Icon icon, Widget field, Widget button) {
  return ListTile(
    leading: icon,
    title: field,
    trailing: button,
  );
}
ListTile listsosmed2(Icon icon, Widget field) {
  return ListTile(
    leading: icon,
    title: field,

  );
}
