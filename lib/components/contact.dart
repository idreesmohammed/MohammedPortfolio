import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool onHoverLinkedIn = false;
  bool onHoverGitHub = false;
  bool onHoverInsta = false;
  bool onHoverGMail = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Get In Touch",
          style: GoogleFonts.robotoMono(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  Utils.isMobile(context) ? 10.0 : Utils.mdqw(context) / 4),
          child: Wrap(
            children: [
              const SizedBox(
                width: 25.0,
              ),
              InkWell(
                onHover: (val) {
                  setState(() {
                    onHoverLinkedIn = val;
                    onHoverGitHub = false;
                    onHoverInsta = false;
                    onHoverGMail = false;
                  });
                },
                //hoverColor: Colors.red,
                onTap: () {
                  final Uri url = Uri.parse(
                      'https://www.linkedin.com/in/mohammed-idrees-757034184');
                  launchUrl(url);
                },
                child: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: onHoverLinkedIn == true
                      ? const Color(0xff309543)
                      : Colors.white,
                  size: 50.0,
                ),
              ),
              const SizedBox(
                width: 25.0,
              ),
              InkWell(
                onHover: (val) {
                  setState(() {
                    onHoverLinkedIn = false;
                    onHoverGitHub = val;
                    onHoverInsta = false;
                    onHoverGMail = false;
                  });
                },
                //hoverColor: Colors.red,
                onTap: () {
                  final Uri url =
                      Uri.parse('https://github.com/idreesmohammed');
                  launchUrl(url);
                },
                child: FaIcon(
                  FontAwesomeIcons.github,
                  color: onHoverGitHub == true
                      ? const Color(0xff309543)
                      : Colors.white,
                  size: 50.0,
                ),
              ),
              const SizedBox(
                width: 25.0,
              ),
              InkWell(
                onHover: (val) {
                  setState(() {
                    onHoverLinkedIn = false;
                    onHoverGitHub = false;
                    onHoverInsta = val;
                    onHoverGMail = false;
                  });
                },
                onTap: () {
                  final Uri url = Uri.parse(
                      'https://www.instagram.com/mohammed___idrees21/');
                  launchUrl(url);
                },
                child: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: onHoverInsta == true
                      ? const Color(0xff309543)
                      : Colors.white,
                  size: 50.0,
                ),
              ),
              const SizedBox(
                width: 25.0,
              ),
              InkWell(
                onHover: (val) {
                  setState(() {
                    onHoverLinkedIn = false;
                    onHoverGitHub = false;
                    onHoverInsta = false;
                    onHoverGMail = val;
                  });
                },
                //hoverColor: Colors.red,
                onTap: () {
                  String toMailId = 'mohammedidrees21@gmail.com';
                  String subject = "";
                  String body = "";
                  final Uri url =
                      Uri.parse('mailto:$toMailId?subject=$subject&body=$body');
                  launchUrl(url);
                },
                child: Icon(
                  Icons.mail,
                  color: onHoverGMail == true
                      ? const Color(0xff309543)
                      : Colors.white,
                  size: 50.0,
                ),
              ),
              const SizedBox(
                width: 25.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
