// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDetail extends StatefulWidget {
  const HomeDetail({Key? key}) : super(key: key);

  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var containerWidth = MediaQuery.of(context).size.width;
    var containerHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ],
              ),
              Stack(
                children: [
                  ClipRRect(
                    child: Container(
                      height: 158,
                      width: containerWidth * 0.93,
                      decoration: const BoxDecoration(
                          // color: Color.fromRGBO(157, 118, 193, 1),
                          ),
                      child: Image.asset(
                        'lib/images/House cleaning.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    // right: 15,
                    top: 98,
                    child: Container(
                      padding: const EdgeInsets.only(left: 15),
                      height: 72,
                      width: containerWidth * 0.93,
                      decoration: const BoxDecoration(
                        // color: Color.fromRGBO(255, 255, 255, 1),
                        color: Color.fromRGBO(222, 217, 129, 1),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'House cleaning',
                            style: GoogleFonts.commissioner(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Color.fromRGBO(157, 118, 193, 1),
                                size: 15,
                              ),
                              Text(
                                'valachery',
                                style: GoogleFonts.commissioner(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '91 A, T.A Koil Street, Gandhi Road',
                            style: GoogleFonts.commissioner(
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 105,
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: GoogleFonts.commissioner(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(157, 118, 193, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and \ntypesettingindustry.Lorem Ipsum has been the industrys standard\n dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It \nhas survived not only five centuries, but also the leap',
                      style: GoogleFonts.commissioner(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: containerWidth * 0.93,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(224, 224, 224, 1),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Overview',
                        style: GoogleFonts.commissioner(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(157, 118, 193, 1),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.dinner_dining_outlined,
                              color: Color.fromRGBO(157, 118, 193, 1),
                              size: 15,
                            ),
                            Text(
                              'Kitchen',
                              style: GoogleFonts.commissioner(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.airline_seat_individual_suite_rounded,
                              color: Color.fromRGBO(157, 118, 193, 1),
                              size: 15,
                            ),
                            Text(
                              'Bedroom',
                              style: GoogleFonts.commissioner(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.wind_power_outlined,
                              color: Color.fromRGBO(157, 118, 193, 1),
                              size: 15,
                            ),
                            Text(
                              'Garden',
                              style: GoogleFonts.commissioner(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 95,
                width: containerWidth * 0.93,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(224, 224, 224, 1),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Location',
                            style: GoogleFonts.commissioner(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: Color.fromRGBO(157, 118, 193, 1),
                            size: 15,
                          ),
                          Text(
                            'valachery',
                            style: GoogleFonts.commissioner(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            '91 A, T.A Koil Street, Gandhi Road',
                            style: GoogleFonts.commissioner(
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 134,
                width: containerWidth * 0.93,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(224, 224, 224, 1),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Book Slot',
                              style: GoogleFonts.commissioner(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(157, 118, 193, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'House Cleaning',
                                style: GoogleFonts.commissioner(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Container(
                                height: 21,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(229, 206, 251, 1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    '2 hours',
                                    style: GoogleFonts.commissioner(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Text(
                                '₹1000',
                                style: GoogleFonts.commissioner(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                            color: Color.fromRGBO(157, 118, 193, 1),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Container(
                              height: 32,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                color: const Color.fromRGBO(157, 118, 193, 1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '₹1000',
                                    style: GoogleFonts.commissioner(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Book now',
                                      style: GoogleFonts.commissioner(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline_outlined),
            label: 'My Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
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
