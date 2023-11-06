import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'lib/images/otp.svg',
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
                              text: 'Enter the verification ',
                              style: GoogleFonts.commissioner(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Colors.black)),
                          TextSpan(
                            text: ' Code',
                            style: GoogleFonts.commissioner(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color:const Color.fromRGBO(157, 118, 193, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Enter 6 digits’s code sent to you at  \n 75874*****',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                 
                 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 40, 8.0, 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // OTP input boxes
                        OtpTextField(
                          numberOfFields: 6,
                          enabledBorderColor:const Color.fromARGB(245, 0, 0, 0),
                          borderRadius: BorderRadius.circular(5),
                          focusedBorderColor:const Color.fromARGB(245, 0, 0, 0),
                          fieldWidth: 40,
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          
                          
                          
                          
                          onSubmit: (String verificationCode) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Verification Code"),
                                    content: Text(
                                        'Code entered is $verificationCode'),
                                  );
                                });
                          }, // end onSubmit
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 120.0, vertical: 15.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                backgroundColor:const
                                    Color.fromRGBO(157, 118, 193, 1)),
                            onPressed: () {},
                            child: Text(
                              'Verify',
                              style: GoogleFonts.commissioner(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                          const  SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
