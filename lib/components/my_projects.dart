import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

import '../utils.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  bool onHover = false;
  bool onHover2 = false;
  bool onHover3 = false;
  bool onHover4 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Some Things I've Built",
          style: GoogleFonts.robotoMono(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff051830),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: !Utils.isMobile(context)
                    ? Utils.mdqw(context) / 4
                    : Utils.mdqw(context) * 0.9,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Center(
                      child: Text(
                        projectName[0],
                        style: GoogleFonts.robotoMono(
                            color: const Color(0xff309543),
                            fontSize: 19.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        description[0],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 6),
                      child: InkWell(
                        onHover: (val) {
                          setState(() {
                            onHover = val;
                            onHover2 = false;
                            onHover3 = false;
                            onHover4 = false;
                          });
                        },
                        onTap: () {
                          final Uri url = Uri.parse(
                              'https://github.com/idreesmohammed/googleMapDistanceCalculator');
                          launchUrl(url);
                        },
                        child: Text(
                          'Check it Out',
                          style: GoogleFonts.robotoMono(
                              color: onHover == true
                                  ? const Color(0xff309543)
                                  : Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff051830),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: !Utils.isMobile(context)
                    ? Utils.mdqw(context) / 4
                    : Utils.mdqw(context) * 0.9,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Text(
                      projectName[1],
                      style: GoogleFonts.robotoMono(
                          color: const Color(0xff309543),
                          fontSize: 19.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        description[1],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 6),
                      child: InkWell(
                        onHover: (val) {
                          setState(() {
                            onHover = false;
                            onHover2 = val;
                            onHover3 = false;
                            onHover4 = false;
                          });
                        },
                        onTap: () {
                          final Uri url = Uri.parse(
                              'https://github.com/idreesmohammed/fakestoreshopping');
                          launchUrl(url);
                        },
                        child: Text(
                          'Check it Out',
                          style: GoogleFonts.robotoMono(
                              color: onHover2 == true
                                  ? const Color(0xff309543)
                                  : Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff051830),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: !Utils.isMobile(context)
                    ? Utils.mdqw(context) / 4
                    : Utils.mdqw(context) * 0.9,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Text(
                      projectName[2],
                      style: GoogleFonts.robotoMono(
                          color: const Color(0xff309543),
                          fontSize: 19.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        description[2],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 6),
                      child: InkWell(
                        onHover: (val) {
                          setState(() {
                            onHover = false;
                            onHover2 = false;
                            onHover3 = val;
                            onHover4 = false;
                          });
                        },
                        onTap: () {
                          final Uri url = Uri.parse(
                              'https://github.com/idreesmohammed/flutterfooddelivery');
                          launchUrl(url);
                        },
                        child: Text(
                          'Check it Out',
                          style: GoogleFonts.robotoMono(
                              color: onHover3 == true
                                  ? const Color(0xff309543)
                                  : Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff051830),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: !Utils.isMobile(context)
                    ? Utils.mdqw(context) / 4
                    : Utils.mdqw(context) * 0.9,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Text(
                      projectName[3],
                      style: GoogleFonts.robotoMono(
                          color: const Color(0xff309543),
                          fontSize: 19.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        description[3],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 6),
                      child: InkWell(
                        onHover: (val) {
                          setState(() {
                            onHover = false;
                            onHover2 = false;
                            onHover3 = false;
                            onHover4 = val;
                          });
                        },
                        onTap: () {
                          final Uri url = Uri.parse(
                              'https://github.com/idreesmohammed/memoapp');
                          launchUrl(url);
                        },
                        child: Text(
                          'Check it Out',
                          style: GoogleFonts.robotoMono(
                              color: onHover4 == true
                                  ? const Color(0xff309543)
                                  : Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  List<String> projectName = [
    "Distance calculator",
    "Shopping App",
    "Food Delivery App",
    "Offline Notes"
  ];
  List<String> description = [
    "This application was developed fully responsive in a flutter framework. I had integrated google maps plugin along with google API key. It can be used for calculating distance between our current location and the point which we are choosing will show the distance in Kms.",
    "This application was developed fully responsive in a flutter framework. I have used fake store website free products API to design and implement.",
    "This application was developed fully responsive in a flutter framework. Using Firebase login with Email and otp login. Integrated the products with rest API.",
    "This application was developed fully responsive in a flutter framework. I used Hive with CRUD operator for local storage to store as notes for the products."
  ];
}
