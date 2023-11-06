// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpm/custom/custom_myjobs.dart';

class Completedjob extends StatefulWidget {
  const Completedjob({super.key});

  @override
  State<Completedjob> createState() => _CompletedjobState();
}

class _CompletedjobState extends State<Completedjob> {
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
            const SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Completed',
                        style: GoogleFonts.commissioner(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' Jobs',
                        style: GoogleFonts.commissioner(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: const Color.fromRGBO(157, 118, 193, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Column(
              children: [
                CustomJobs(text: 'Job 1', icon: Icons.work),
                SizedBox(height: 10),
                CustomJobs(text: 'Job 2', icon: Icons.work),
                SizedBox(height: 10),
                CustomJobs(text: 'Job 3', icon: Icons.work),
                SizedBox(height: 10),
                CustomJobs(text: 'Job 4', icon: Icons.work),
              ],
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'My Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
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
