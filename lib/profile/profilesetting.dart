// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpm/custom/custom_profilesetting.dart';
import 'package:mpm/profile/editprofile.dart';
import 'package:mpm/profile/kycdocumentidproof.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 30),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Profile',
                        style: GoogleFonts.commissioner(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' Setting',
                        style: GoogleFonts.commissioner(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: const Color.fromRGBO(157, 118, 193, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    maxRadius: 43,
                    backgroundImage: AssetImage("lib/images/naren.jpg"),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: <Widget>[
                      Text(
                        "Pradeesh Bala",
                        style: GoogleFonts.commissioner(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'pradeeshbala@gmail.com',
                        style: GoogleFonts.commissioner(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: GoogleFonts.commissioner(fontSize: 11),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          minimumSize: const Size(120, 30),
                          backgroundColor:
                              const Color.fromRGBO(157, 118, 193, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Editprofile()),
                          );
                        },
                        child: Text(
                          'Edit Profile',
                          style: GoogleFonts.commissioner(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromRGBO(157, 118, 193, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const CustomSetting(
                text: 'Security',
                icon: Icons.lock_outline,
              ),
              const CustomSetting(
                text: 'Notification',
                icon: Icons.notifications_outlined,
              ),
              const CustomSetting(
                text: 'My Subscription',
                icon: Icons.subscriptions_outlined,
              ),
              CustomSetting(
                  text: 'KYC Documents',
                  icon: Icons.description_outlined,
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KycIDproof()),
                    );
                  }),
              const CustomSetting(
                text: 'Report a Problem',
                icon: Icons.warning_amber_outlined,
              ),
              const CustomSetting(
                text: 'Terms and Policies',
                icon: Icons.info_outline,
              ),
              CustomSetting(
                  text: 'Logout',
                  icon: Icons.logout_outlined,
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Log Out'),
                          content:
                              const Text('You are logged out successfully!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                // Close the dialog
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
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
