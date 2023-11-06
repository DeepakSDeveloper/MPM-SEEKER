import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpm/MPMstart/register.dart';
import 'package:mpm/MPMstart/verifyotp.dart';


class GetOtp extends StatefulWidget {
  const GetOtp({super.key});

  @override
  State<GetOtp> createState() => _GetOtpState();
}

class _GetOtpState extends State<GetOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'lib/images/login.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 148,
                      width: 145.23,
                    ),
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
                            text: ' Sign',
                            style: GoogleFonts.commissioner(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color:const Color.fromRGBO(157, 118, 193, 1)),
                          ),
                          TextSpan(
                            text: ' You in',
                            style: GoogleFonts.commissioner(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Welcome Back,\n You have been missed',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8.0, 20, 8.0),
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
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 120.0, vertical: 15.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor:const Color.fromRGBO(157, 118, 193, 1)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyOtp()),
                          );
                        },
                        child: Text(
                          'Get OTP',
                          style: GoogleFonts.commissioner(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account ? ",
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
                                builder: (context) => const Register()),
                          );
                        },
                        child: Text("Sign up",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
