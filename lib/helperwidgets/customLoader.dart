import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAnimationBuilder extends StatelessWidget {
  const CustomAnimationBuilder(
      {super.key, required this.text, required this.percentage});
  final String text;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 2),
      builder: (context, val, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: (GoogleFonts.robotoMono(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '${(val * 100).toInt().toString()}%',
                  style: (GoogleFonts.robotoMono(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              height: 5,
              child: LinearProgressIndicator(
                backgroundColor: Colors.black,
                color: Colors.yellow,
                value: val,
              ),
            ),
          ],
        ),
      ),
      tween: Tween(begin: 0.0, end: percentage),
    );
  }
}
