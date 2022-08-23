import 'package:flutter/material.dart';
import 'package:protalent_eksad/widget/responsive.dart';
import 'package:protalent_eksad/appbar/appbar_home.dart';
import 'package:protalent_eksad/public/post/post.dart';
import 'package:protalent_eksad/homepage.dart';
import 'package:protalent_eksad/footer.dart';

class PostBody extends StatelessWidget {
  final String Image;
  final String HeadText;
  final String Tanggal;
  final String Bodyfull;
  final String Urutan;
  const PostBody({
    Key? key,
    required this.Image,
    required this.HeadText,
    required this.Tanggal,
    required this.Bodyfull,
    required this.Urutan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarHomeSmall(screenSize)
          : AppbarHomeLarge(screenSize, context, Colors.black, Colors.black,
              Colors.blue, Colors.black),
      body: ListView(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 70, right: 70),
            controller: ScrollController(),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 3),
                    height: 90,
                    child: Row(
                      children: [
                        Container(
                            height: 20,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Home',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ))),
                        Container(
                          padding: const EdgeInsets.only(top: 1),
                          height: 20,
                          child: const Text(
                            ' > ',
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          ),
                        ),
                        Container(
                          height: 20,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Post(),
                                ),
                              );
                            },
                            child: const Text(
                              'News',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 1),
                          height: 20,
                          child: const Text(
                            ' >  ',
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          ),
                        ),
                        Container(
                          height: 20,
                          child: Text(
                            Urutan,
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Image), fit: BoxFit.cover),
                    ),
                    height: 450,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    child: Text(
                      HeadText,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(200, 4, 4, 52),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      Tanggal,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    child: Text(
                      Bodyfull,
                      style: const TextStyle(fontSize: 20, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Footer(),
          // Container(
          //   height: 200,
          //   color: Colors.black87,
          //   child: Center(
          //     child: Text(
          //       'PT. Tiga Daya Digital Indonesia',
          //       style: TextStyle(fontSize: 16, color: Colors.white),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
