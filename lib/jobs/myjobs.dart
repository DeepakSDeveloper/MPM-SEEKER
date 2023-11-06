// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpm/custom/custom_inprogress.dart';
import 'package:mpm/custom/custom_myjobs.dart';

class MyJobs extends StatefulWidget {
  const MyJobs({Key? key}) : super(key: key);

  @override
  State<MyJobs> createState() => _MyJobsState();
}

class _MyJobsState extends State<MyJobs> {
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
                          text: 'MY',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 171,
                    height: 134,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 231, 228, 228),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.business_center_rounded,
                            size: 35,
                            color: Color.fromRGBO(157, 118, 193, 1),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '05',
                            style: GoogleFonts.commissioner(
                              fontWeight: FontWeight.w600,
                              fontSize: 21,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Total Applied Jobs',
                            style: GoogleFonts.commissioner(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: const Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 171,
                        height: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 231, 228, 228),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.check_circle,
                                color: Color.fromRGBO(157, 118, 193, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '04',
                                  style: GoogleFonts.commissioner(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Completed',
                                  style: GoogleFonts.commissioner(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color:
                                        const Color.fromRGBO(157, 118, 193, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        height: 8,
                      ),
                      Container(
                        width: 171,
                        height: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 231, 228, 228),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.task_alt,
                                color: Color.fromRGBO(157, 118, 193, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '01',
                                  style: GoogleFonts.commissioner(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'In progress',
                                  style: GoogleFonts.commissioner(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color:
                                        const Color.fromRGBO(157, 118, 193, 1),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Your',
                          style: GoogleFonts.commissioner(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: const Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                        TextSpan(
                          text: ' Jobs',
                          style: GoogleFonts.commissioner(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 215,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('see more',
                        style: TextStyle(
                            color: Color.fromRGBO(157, 118, 193, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "October",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(157, 118, 193, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomJobs(text: 'Job 1', icon: Icons.work),
              const SizedBox(height: 10),
              const CustomJobs(text: 'Job 2', icon: Icons.work),
              const SizedBox(height: 10),
              const CustomInprogress(text: 'Job 3', icon: Icons.work),
              const SizedBox(height: 10),
              const CustomJobs(text: 'Job 4', icon: Icons.work),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 13),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "September",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(157, 118, 193, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const CustomJobs(text: 'Job 5', icon: Icons.work),
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
            icon: Icon(Icons.work),
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
