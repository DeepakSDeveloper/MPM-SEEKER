// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import 'package:mpm/profile/kycdocumentbankdetail.dart';
import 'package:mpm/profile/profilesetting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class KycIDproof extends StatefulWidget {
  const KycIDproof({Key? key}) : super(key: key);

  @override
  State<KycIDproof> createState() => _KycIDproofState();
}

class _KycIDproofState extends State<KycIDproof> {
  int _selectedIndex = 0;
  File? _frontImage;
  File? _backImage;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _pickFrontImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _frontImage = File(pickedImage.path);
      });
    }
  }

  Future<void> _pickBackImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _backImage = File(pickedImage.path);
      });
    }
  }

  Widget _buildImageUploadButton(
      IconData icon, File? image, VoidCallback onPressed) {
    return IconButton(
      icon: image != null ? Image.file(image) : Icon(icon),
      iconSize: 45,
      color: const Color.fromRGBO(157, 118, 193, 1),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isid = true;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileSetting()),
                        );
                      },
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                    const SizedBox(
                      width: 60,
                      height: 100,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'KYC',
                              style: GoogleFonts.commissioner(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ' Documents',
                              style: GoogleFonts.commissioner(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: const Color.fromRGBO(157, 118, 193, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ToggleSwitch(
                          // ignore: dead_code
                          initialLabelIndex: isid ? 0:1,
                          minHeight: 50.0,
                          cornerRadius: 5,
                          minWidth: 175.0,
                          activeBgColor: const [
                            Color.fromRGBO(157, 118, 193, 1)
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.white,
                          inactiveFgColor:
                              const Color.fromRGBO(157, 118, 193, 1),
                          customTextStyles: [
                            TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoogleFonts.commissioner().fontFamily,
                            ),
                          ],
                          centerText: true,
                          totalSwitches: 2,
                          labels: const ['ID Proof', 'Bank Details'],
                          onToggle: (index) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const KYCBankDetail()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: StepProgressIndicator(
                      roundedEdges: Radius.circular(10),
                      totalSteps: 3,
                      currentStep: 1,
                      size: 2,
                      padding: 10,
                      selectedColor: Color.fromRGBO(157, 118, 193, 1),
                      unselectedColor: Color.fromARGB(255, 191, 9, 9),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Select ID Type',
                      style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 30, 25.0, 20.0),
                      child: TextField(
                        readOnly: true,
                        style: GoogleFonts.commissioner(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(199, 199, 199, 1),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Select Government Issued ID',
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(157, 118, 193, 1),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down),
                            color: const Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                DottedBorder(
                  color: const Color.fromRGBO(157, 118, 193, 1),
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  dashPattern: const [10, 10],
                  child: SizedBox(
                    width: 330,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildImageUploadButton(Icons.image_outlined,
                            _frontImage, () => _pickFrontImage()),
                        Text(
                          'Front Side',
                          style: GoogleFonts.commissioner(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Upload the front side of the document.\nSupport JPEG, PNG, and PDF',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.commissioner(
                              fontWeight: FontWeight.w400,
                              fontSize: 9,
                              color: const Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                DottedBorder(
                  color: const Color.fromRGBO(157, 118, 193, 1),
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  dashPattern: const [10, 10],
                  child: SizedBox(
                    width: 330,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildImageUploadButton(Icons.image_outlined,
                            _backImage, () => _pickBackImage()),
                        Text(
                          'Back Side',
                          style: GoogleFonts.commissioner(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Upload the back side of the document.\nSupport JPEG, PNG, and PDF',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.commissioner(
                              fontWeight: FontWeight.w400,
                              fontSize: 9,
                              color: const Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 7.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: const Color.fromRGBO(157, 118, 193, 1),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Next',
                    style: GoogleFonts.commissioner(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outlined),
            label: 'My Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: const Color.fromRGBO(157, 118, 193, 1),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
