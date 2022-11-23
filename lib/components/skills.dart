import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/components/skillcard.dart';
import 'package:myportfolio/utils.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Tech Stack",
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SkillCard(
                      url:
                          "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                  customPadding("Flutter")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SkillCard(
                      url:
                          "https://www.gstatic.com/devrel-devsite/prod/v68ffab397cab4b2929d42447c6687d169e807aa5b3dd2e0657c66c185de8e01d/firebase/images/touchicon-180.png"),
                  customPadding("Firebase")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SkillCard(
                      url:
                          "https://dart-code.gallerycdn.vsassets.io/extensions/dart-code/dart-code/3.53.20221107/1667837320164/Microsoft.VisualStudio.Services.Icons.Default"),
                  customPadding(" Dart")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SkillCardForImage(url: "assets/gitlogo.svg"),
                  customPadding("Git")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SkillCard(
                      url:
                          "https://devblogs.microsoft.com/visualstudio/wp-content/uploads/sites/4/2018/12/vsonline_215.png"),
                  customPadding("Azure DevOps")
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Padding customPadding(text) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        text,
        style: GoogleFonts.robotoMono(
            color: Colors.white, fontSize: 19.0, fontWeight: FontWeight.w500),
      ),
    );
  }
}
