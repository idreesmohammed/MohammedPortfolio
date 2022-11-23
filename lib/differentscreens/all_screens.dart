import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/components/about_me.dart';
import 'package:myportfolio/components/my_projects.dart';
import 'package:myportfolio/components/skills.dart';
import '../components/contact.dart';

class AllScreens extends StatefulWidget {
  const AllScreens({Key? key}) : super(key: key);

  @override
  State<AllScreens> createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isHover = false;
  bool isHoverProject = false;
  bool isHoverContacts = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xff021227),
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: const Color(0xff021227),
        toolbarHeight: height * 0.24,
        actions: [
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              // spaceContainer(height, width),
              SizedBox(
                height: height,
                width: width,
                //color: Colors.blue,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 30.0, right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Text(
                              "Skills",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 18.0,
                                  decoration: TextDecoration.underline,
                                  color: isHover == true
                                      ? const Color(0xff309543)
                                      : Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            onTap: () {
                              myScrollController.animateTo(
                                450,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                            },
                            onHover: (val) {
                              setState(() {
                                isHover = val;
                                isHoverProject = false;
                                isHoverContacts = false;
                              });
                            },
                          ),
                          InkWell(
                            onTap: () {
                              myScrollController.animateTo(
                                950,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.decelerate,
                              );
                            },
                            onHover: (val) {
                              setState(() {
                                isHover = false;
                                isHoverProject = val;
                                isHoverContacts = false;
                              });
                            },
                            child: Text(
                              "Projects",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 18.0,
                                  decoration: TextDecoration.underline,
                                  color: isHoverProject == true
                                      ? const Color(0xff309543)
                                      : Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              myScrollController.animateTo(
                                2000,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.decelerate,
                              );
                            },
                            onHover: (val) {
                              setState(() {
                                isHover = false;
                                isHoverProject = false;
                                isHoverContacts = val;
                              });
                            },
                            child: Text(
                              "Contacts",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 18.0,
                                  decoration: TextDecoration.underline,
                                  color: isHoverContacts == true
                                      ? const Color(0xff309543)
                                      : Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: SizedBox(
                        height: height * 0.04,
                        width: width,
                        //color: Colors.grey,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Hi, My name is",
                              style: GoogleFonts.robotoMono(
                                  color: const Color(0xff309543),
                                  fontSize: 18.0),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: SizedBox(
                        height: height * 0.05,
                        //color: Colors.grey,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Mohammed Idrees",
                              style: GoogleFonts.robotoMono(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: SizedBox(
                        height: height * 0.06,
                        width: width,
                        //color: Colors.grey,
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Front-End Developer",
                              style: GoogleFonts.robotoMono(
                                  color: const Color(0xff309543),
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              //spaceContainer(height, width),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: SingleChildScrollView(
                controller: myScrollController,
                child: Column(
                  children: const [
                    AboutMe(),
                    Skills(),
                    SizedBox(
                      height: 50.0,
                    ),
                    MyProjects(),
                    SizedBox(
                      height: 50.0,
                    ),
                    Contact(),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
