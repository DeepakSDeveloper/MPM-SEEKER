import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpm/MPMstart/getotp.dart';
// import 'package:mpm/register.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SvgPicture.asset(
                    'lib/images/Getstarted.svg',
                    semanticsLabel: 'My SVG Image',
                    height: 318,
                    width: 318,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'My Pocket Money',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color:const Color.fromRGBO(157, 118, 193, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '“Your Time, Your Terms. Start earning \n on your schedule.”',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.commissioner(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 75.0, vertical: 15.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        backgroundColor:const Color.fromRGBO(157, 118, 193, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GetOtp()),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
