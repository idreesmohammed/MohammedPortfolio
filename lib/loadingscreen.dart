import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/differentscreens/all_screens.dart';
import 'package:myportfolio/helperwidgets/customLoader.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const AllScreens(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff021227),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              duration: const Duration(seconds: 2),
              builder: (context, val, child) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 5,
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.black,
                        color: Colors.yellow,
                        value: val,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${(val * 100).toInt().toString()}%',
                      style: (GoogleFonts.robotoMono(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
              tween: Tween(begin: 0.0, end: 1.0),
            )
          ],
        ),
      ),
    );
  }
}
