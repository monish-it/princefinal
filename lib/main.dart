// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:princemas/prodet/flbt.dart';
import 'package:princemas/prodet/hcandles.dart';
// import 'package:princemas/prodet/flbt.dart';
import 'package:princemas/prodet/hcraft.dart';
import 'package:princemas/prodet/productdetail.dart';
import 'package:princemas/prodet/vermi.dart';
import 'prodet/hcraft.dart';
// import 'package:bottom_bar/bottom_bar.dart';

// import 'package:google_fonts/google_fonts.dart';

final imgList = ['assets/pic1.png', 'assets/pic2.png', 'assets/pic3.png'];

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 1500,
          splash: Image.asset(
            'assets/logo.png',

            // fit: BoxFit.fitWidth,
          ),

          splashIconSize: 600,
          nextScreen: const Homes(),
          splashTransition: SplashTransition.fadeTransition,

          // pageTransitionType: ,
          // backgroundColor: Colors.green.shade50,
        ));
  }
}

class Homes extends StatelessWidget {
  const Homes({Key? key}) : super(key: key);

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(154, 215, 126, 0),
        title: const Text(
          'PRINCEMAS',
          style: TextStyle(
              fontFamily: 'itim', fontSize: 25, fontWeight: FontWeight.w900),
        ),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Image.asset('assets/logo.png'))
        // ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Color.fromRGBO(154, 215, 126, 1),
          ),
        ),
      ),
      //for Banner-------------------------
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 200.0,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 2),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true),
                    items: imgList
                        .map(
                          (item) => Center(
                            child: Image.asset(item,
                                fit: BoxFit.cover, width: 1000),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Hsoap(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(213, 254, 194, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.blue,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: AspectRatio(
                        aspectRatio: 0.90,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            // color: const Color.fromRGBO(255, 179, 102, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/hsoap.png?alt=media&token=16ad3a0e-2fbc-4bcc-8ddf-7925dc4e3183'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Homemade Soap',
                          style: TextStyle(fontFamily: 'itim', fontSize: 20),
                          // style: GoogleFonts.itim(
                          //   fontStyle: FontStyle.italic,
                          //   fontSize: 20,
                          // ),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            text: "Rs. 100",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: kPrimaryColor),
                            children: const [
                              TextSpan(
                                text: " ",
                                // style: GoogleFonts.itim(
                                //   fontStyle: FontStyle.normal,
                                // ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Hcraft(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(213, 254, 194, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.blue,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: AspectRatio(
                        aspectRatio: 0.90,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            // color: const Color.fromRGBO(255, 179, 102, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/handicraft.png?alt=media&token=45241260-7c8c-4d17-81fd-cbfe44b582cf',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Handicrafts',
                          style: TextStyle(fontFamily: 'itim', fontSize: 20),
                          // style: GoogleFonts.itim(
                          //   fontStyle: FontStyle.italic,
                          //   fontSize: 20,
                          // ),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            text: "Rs. 100",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: kPrimaryColor),
                            children: const [
                              TextSpan(
                                text: " ",
                                // style: GoogleFonts.itim(
                                //   fontStyle: FontStyle.normal,
                                // ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Flbt(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(213, 254, 194, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.blue,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: AspectRatio(
                        aspectRatio: 0.90,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            // color: const Color.fromRGBO(255, 179, 102, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/flbt.png?alt=media&token=2d3fe845-1a21-47aa-be5e-2a1a47f53830'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Fuel Briquette',
                          style: TextStyle(fontFamily: 'itim', fontSize: 20),
                          // style: GoogleFonts.itim(
                          //   fontStyle: FontStyle.italic,
                          //   fontSize: 20,
                          // ),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            text: "Rs. 100",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: kPrimaryColor),
                            children: const [
                              TextSpan(
                                text: " ",
                                // style: GoogleFonts.itim(
                                //   fontStyle: FontStyle.normal,
                                // ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Hcandles(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(213, 254, 194, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.blue,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: AspectRatio(
                        aspectRatio: 0.90,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            // color: const Color.fromRGBO(255, 179, 102, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/hcandles.jpg?alt=media&token=5633b7ec-aa5d-431f-abb2-ce6965e5a1fd'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Homemade Candles',
                          style: TextStyle(fontFamily: 'itim', fontSize: 20),
                          // style: GoogleFonts.itim(
                          //   fontStyle: FontStyle.italic,
                          //   fontSize: 20,
                          // ),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            text: "Rs. 100",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: kPrimaryColor),
                            children: const [
                              TextSpan(
                                text: " ",
                                // style: GoogleFonts.itim(
                                //   fontStyle: FontStyle.normal,
                                // ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Vermi(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 40),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(213, 254, 194, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.blue,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: AspectRatio(
                        aspectRatio: 0.90,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            // color: const Color.fromRGBO(255, 179, 102, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/vermi.png?alt=media&token=dd86aa99-6ddb-4523-9396-ba657312a10d'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          ' Vermicompost',
                          style: TextStyle(fontFamily: 'itim', fontSize: 20),
                          // style: GoogleFonts.itim(
                          //   fontStyle: FontStyle.italic,
                          //   fontSize: 20,
                          // ),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            text: "Rs. 100",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: kPrimaryColor),
                            children: const [
                              TextSpan(
                                text: " ",
                                // style: GoogleFonts.itim(
                                //   fontStyle: FontStyle.normal,
                                // ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: ,
    );
  }

  Widget serlst(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true),
                items: imgList
                    .map(
                      (item) => Center(
                        child:
                            Image.asset(item, fit: BoxFit.cover, width: 1000),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Hsoap(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(213, 254, 194, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: MediaQuery.of(context).size.width * 0.95,
            // color: Colors.blue,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: AspectRatio(
                    aspectRatio: 0.90,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        // color: const Color.fromRGBO(255, 179, 102, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/hsoap.png?alt=media&token=16ad3a0e-2fbc-4bcc-8ddf-7925dc4e3183'),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Homemade Soap',
                      style: TextStyle(fontFamily: 'itim', fontSize: 20),
                      // style: GoogleFonts.itim(
                      //   fontStyle: FontStyle.italic,
                      //   fontSize: 20,
                      // ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        text: "Rs. 100",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: kPrimaryColor),
                        children: const [
                          TextSpan(
                            text: " ",
                            // style: GoogleFonts.itim(
                            //   fontStyle: FontStyle.normal,
                            // ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Hcraft(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(213, 254, 194, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: MediaQuery.of(context).size.width * 0.95,
            // color: Colors.blue,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: AspectRatio(
                    aspectRatio: 0.90,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        // color: const Color.fromRGBO(255, 179, 102, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/handicraft.png?alt=media&token=45241260-7c8c-4d17-81fd-cbfe44b582cf',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Handicrafts',
                      style: TextStyle(fontFamily: 'itim', fontSize: 20),
                      // style: GoogleFonts.itim(
                      //   fontStyle: FontStyle.italic,
                      //   fontSize: 20,
                      // ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        text: "Rs. 100",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: kPrimaryColor),
                        children: const [
                          TextSpan(
                            text: " ",
                            // style: GoogleFonts.itim(
                            //   fontStyle: FontStyle.normal,
                            // ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Flbt(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(213, 254, 194, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: MediaQuery.of(context).size.width * 0.95,
            // color: Colors.blue,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: AspectRatio(
                    aspectRatio: 0.90,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        // color: const Color.fromRGBO(255, 179, 102, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/flbt.png?alt=media&token=2d3fe845-1a21-47aa-be5e-2a1a47f53830'),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Fuel Briquette',
                      style: TextStyle(fontFamily: 'itim', fontSize: 20),
                      // style: GoogleFonts.itim(
                      //   fontStyle: FontStyle.italic,
                      //   fontSize: 20,
                      // ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        text: "Rs. 100",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: kPrimaryColor),
                        children: const [
                          TextSpan(
                            text: " ",
                            // style: GoogleFonts.itim(
                            //   fontStyle: FontStyle.normal,
                            // ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Hcandles(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(213, 254, 194, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: MediaQuery.of(context).size.width * 0.95,
            // color: Colors.blue,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: AspectRatio(
                    aspectRatio: 0.90,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        // color: const Color.fromRGBO(255, 179, 102, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/hcandles.jpg?alt=media&token=5633b7ec-aa5d-431f-abb2-ce6965e5a1fd'),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Homemade Candles',
                      style: TextStyle(fontFamily: 'itim', fontSize: 20),
                      // style: GoogleFonts.itim(
                      //   fontStyle: FontStyle.italic,
                      //   fontSize: 20,
                      // ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        text: "Rs. 100",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: kPrimaryColor),
                        children: const [
                          TextSpan(
                            text: " ",
                            // style: GoogleFonts.itim(
                            //   fontStyle: FontStyle.normal,
                            // ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const Vermi(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 40),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(213, 254, 194, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: MediaQuery.of(context).size.width * 0.95,
            // color: Colors.blue,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: AspectRatio(
                    aspectRatio: 0.90,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        // color: const Color.fromRGBO(255, 179, 102, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/princemas-261ad.appspot.com/o/vermi.png?alt=media&token=dd86aa99-6ddb-4523-9396-ba657312a10d'),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      ' Vermicompost',
                      style: TextStyle(fontFamily: 'itim', fontSize: 20),
                      // style: GoogleFonts.itim(
                      //   fontStyle: FontStyle.italic,
                      //   fontSize: 20,
                      // ),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        text: "Rs. 100",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: kPrimaryColor),
                        children: const [
                          TextSpan(
                            text: " ",
                            // style: GoogleFonts.itim(
                            //   fontStyle: FontStyle.normal,
                            // ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void setState(Null Function() param0) {}
