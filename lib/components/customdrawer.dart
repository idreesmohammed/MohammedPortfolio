import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/helperwidgets/customLoader.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      color: const Color(0xff021227),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 66,
              backgroundImage: AssetImage(
                'assets/myprofile.jpeg',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              Constants.name,
              style: (GoogleFonts.robotoMono(
                  fontSize: 19.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 5),
            Text(
              textAlign: TextAlign.center,
              Constants.frontEnd,
              style: (GoogleFonts.robotoMono(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 5),
            customDivider(),
            const SizedBox(height: 5),
            customRow(title: Constants.contactTitle, text: Constants.mexNumber),
            const SizedBox(height: 5),
            customRow(title: Constants.emailTitle, text: Constants.email),
            customDivider(),
            const SizedBox(height: 10),
            customText(Constants.skills),
            const SizedBox(height: 5),
            const CustomAnimationBuilder(
              text: Constants.flutter,
              percentage: 0.8,
            ),
            const SizedBox(height: 5),
            const CustomAnimationBuilder(text: Constants.dart, percentage: 0.8),
            const SizedBox(height: 5),
            const CustomAnimationBuilder(
              text: Constants.fireBase,
              percentage: 0.7,
            ),
            const SizedBox(height: 5),
            const CustomAnimationBuilder(
              text: Constants.bloc,
              percentage: 0.7,
            ),
            const SizedBox(height: 5),
            const CustomAnimationBuilder(
              text: Constants.getX,
              percentage: 0.9,
            ),
            const SizedBox(height: 5),
            const CustomAnimationBuilder(
              text: Constants.hive,
              percentage: 0.65,
            ),
            const SizedBox(height: 5),
            const CustomAnimationBuilder(
              text: Constants.swiftUI,
              percentage: 0.5,
            ),
            const SizedBox(height: 10),
            customDivider(),
            customText(Constants.knowledge),
            knowledgeWidget('${Constants.flutter} & ${Constants.dart}'),
            knowledgeWidget(Constants.github),
            knowledgeWidget(Constants.frontEndDeveloper),
            knowledgeWidget('${Constants.jira} & ${Constants.azureDevOps}'),
            customDivider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: InkWell(
                onTap: () {
                  launchUrl(Uri.parse(Constants.resumeUrl));
                },
                child: Container(
                    padding: const EdgeInsets.only(
                        top: 10, left: 5, right: 5, bottom: 10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.pinkAccent,
                              Colors.blue.shade900,
                            ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(Constants.downloadMyResume,
                            style: (GoogleFonts.robotoMono(
                                fontSize: 15.0,
                                color: Colors.yellow,
                                fontWeight: FontWeight.w500))),
                        SizedBox(
                          width: 0.5,
                        ),
                        Icon(Icons.download, color: Colors.yellow)
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding knowledgeWidget(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.check,
            color: Colors.yellow,
          ),
          Text(
            text,
            style: (GoogleFonts.robotoMono(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }

  Padding customText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: (GoogleFonts.robotoMono(
              fontSize: 15.0,
              color: Colors.yellow,
              fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }

  Padding customDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Divider(
        color: Colors.white,
        thickness: 0.22,
      ),
    );
  }

  Padding customRow({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: (GoogleFonts.poppins(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
          ),
          Text(text,
              style: GoogleFonts.poppins(
                  fontSize: 10.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
