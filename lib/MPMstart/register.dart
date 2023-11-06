import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpm/MPMstart/getotp.dart';
import 'package:mpm/MPMstart/verifyotp.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'lib/images/Register.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 148,
                      width: 145.23,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Lets',
                              style: GoogleFonts.commissioner(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Colors.black)),
                          TextSpan(
                            text: ' Register',
                            style: GoogleFonts.commissioner(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: const Color.fromRGBO(157, 118, 193, 1)),
                          ),
                          TextSpan(
                            text: ' Account',
                            style: GoogleFonts.commissioner(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Hello user,Start your part \n time journy now!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 35, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: 'Enter Your Name',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: 'Enter Your Email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        labelText: 'Enter Mobile Number',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 130.0, vertical: 15.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              backgroundColor:
                                  const Color.fromRGBO(157, 118, 193, 1)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VerifyOtp()),
                            );
                          },
                          child: Text(
                            'Continue',
                            style: GoogleFonts.commissioner(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.commissioner(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GetOtp()),
                          );
                        },
                        child: Text("Sign In",
                            style: GoogleFonts.commissioner(
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(157, 118, 193, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
