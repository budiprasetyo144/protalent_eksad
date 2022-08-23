import 'package:flutter/material.dart';
import 'package:protalent_eksad/const/text_homepage.dart';
import 'package:protalent_eksad/widget/botton.dart';
import 'package:protalent_eksad/register.dart';
// import 'dart:math';
import 'package:protalent_eksad/widget/image_slide.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int boot = 1;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      width: screenSize.width,
      height: screenSize.height * 0.5,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color(0xFF0D5396),
        Color(0xFF2B69A4),
        Color(0xFF42A5F5),
      ])),
      //color: Colors.blue,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            width: screenSize.width * 0.6,
            //color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenSize.width * 0.4,
                  height: 150,
                  //color: Colors.red,
                  child: Text(
                    home1_head,
                    style: const TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 3),
                  ),
                ),
                Container(
                  width: screenSize.width * 0.6,
                  height: 110,
                  //color: Colors.blue,
                  child: Text(
                    home1_body,
                    style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        letterSpacing: 3,
                        height: 1.2),
                  ),
                ),
                Container(
                  width: screenSize.width * 0.13,
                  height: 40,
                  //color: Colors.green,
                  child: Botton_tombol(
                      title: 'Registrasi Sekarang', arah: const Register()),
                )
              ],
            ),
          ),
          VerticalSlider(),
          // TextButton(
          //     onPressed: (){
          //       setState((){
          //         boot = Random().nextInt(2)+1;
          //       });
          //     },
          //     child: Image.asset('assets/images/bootcamp$boot.jpg',
          //       width: screenSize.width * 0.265,
          //       height: screenSize.height * 0.33,
          //       fit: BoxFit.fill,
          //     ),),
        ],
      ),
    );
  }
}
