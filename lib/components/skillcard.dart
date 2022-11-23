import 'package:flutter/material.dart';
import 'package:myportfolio/utils.dart';
import 'package:flutter_svg/svg.dart';

class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          height: !Utils.isMobile(context) ? Utils.mdqw(context) / 6.8 : 77,
          width: !Utils.isMobile(context) ? Utils.mdqw(context) / 6.8 : 77,
          child: Padding(
            padding: Utils.isMobile(context)
                ? const EdgeInsets.all(8.0)
                : const EdgeInsets.all(30.0),
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}

class SkillCardForImage extends StatelessWidget {
  final String url;
  const SkillCardForImage({Key? key, required this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          height: !Utils.isMobile(context) ? Utils.mdqw(context) / 6.8 : 77,
          width: !Utils.isMobile(context) ? Utils.mdqw(context) / 6.8 : 77,
          child: Padding(
            padding: Utils.isMobile(context)
                ? const EdgeInsets.all(8.0)
                : const EdgeInsets.all(30.0),
            child: SvgPicture.network(url),
          ),
        ),
      ),
    );
  }
}
