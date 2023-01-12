import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: Utils.isMobile(context)
                  ? Utils.mdqw(context)
                  : Utils.mdqw(context) / 3,
              height: Utils.isMobile(context)
                  ? Utils.mdqh(context) / 2
                  : Utils.mdqh(context) - 70,
              child: Padding(
                padding: Utils.isMobile(context)
                    ? const EdgeInsets.all(5.0)
                    : const EdgeInsets.only(
                        top: 50, bottom: 50, right: 10.0, left: 100),
                child: Image.asset(
                  'assets/emojiportfolio.png',
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: Utils.isMobile(context)
                  ? Utils.mdqw(context)
                  : Utils.mdqw(context) / 2,
              height: Utils.isMobile(context)
                  ? Utils.mdqh(context) / 2
                  : Utils.mdqh(context) - 70,
              child: SizedBox(
                width: Utils.isMobile(context)
                    ? Utils.mdqw(context)
                    : Utils.mdqw(context) / 2,
                height: Utils.isMobile(context)
                    ? Utils.mdqh(context) / 2
                    : Utils.mdqh(context) - 70,
                child: Center(
                  child: SizedBox(
                    height: Utils.isMobile(context)
                        ? 200 / (Utils.mdqw(context) * 0.0025)
                        : 180,
                    width: Utils.isMobile(context)
                        ? Utils.mdqw(context) * 0.85
                        : 380,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xff021227),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              'About Me',
                              style: GoogleFonts.robotoMono(
                                  color: const Color(0xff309543),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "I'm a software engineer specialized in front end development for hybrid applications using Flutter.\nI love to build products that can be used by millions of people.",
                              style: GoogleFonts.robotoMono(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
