// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Wallet2 extends StatefulWidget {
  const Wallet2({super.key});

  @override
  State<Wallet2> createState() => _Wallet2State();
}

class _Wallet2State extends State<Wallet2> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    var containerWidth = MediaQuery.of(context).size.width;
    var containerheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Good Morning",
                        style: GoogleFonts.commissioner(
                          fontSize: 10,
                          color: const Color.fromRGBO(187, 185, 185, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Pradeesh Bala",
                        style: GoogleFonts.commissioner(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.circle_notifications_outlined,
                      color: Color.fromRGBO(157, 118, 193, 1),
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'My',
                            style: GoogleFonts.commissioner(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: ' Wallet',
                            style: GoogleFonts.commissioner(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: const Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      height: 130,
                      width: containerWidth * 0.93,
                      decoration: const BoxDecoration(
                        color:
                            Colors.white, // Set your desired background color
                      ),
                      child: Image.asset(
                        'lib/images/card.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "₹300 Rs",
                          style: GoogleFonts.commissioner(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        Text(
                          "Total Balance",
                          style: GoogleFonts.commissioner(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 62,
                    width: containerWidth * 0.18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(157, 118, 193, 1),
                    ),
                  ),
                  Container(
                    height: 62,
                    width: containerWidth * 0.18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(157, 118, 193, 1),
                    ),
                  ),
                  Container(
                    height: 62,
                    width: containerWidth * 0.18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(157, 118, 193, 1),
                    ),
                  ),
                  Container(
                    height: 62,
                    width: containerWidth * 0.18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(157, 118, 193, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: containerWidth * 0.94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(224, 224, 224, 1),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ],
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "My Transaction",
                            style: GoogleFonts.commissioner(
                              fontSize: 17,
                              color: const Color.fromRGBO(157, 118, 193, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: containerWidth * 0.35),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: GoogleFonts.commissioner(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(199, 199, 199, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color.fromRGBO(157, 118, 193, 1),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: CircleAvatar(
                              backgroundColor: Colors.cyan,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Today",
                                style: GoogleFonts.commissioner(
                                  fontSize: 12,
                                  color: const Color.fromRGBO(219, 219, 219, 1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Ananthi p",
                                style: GoogleFonts.commissioner(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 145),
                            child: Row(
                              children: [
                                Text(
                                  "+",
                                  style: GoogleFonts.commissioner(
                                    fontSize: 15,
                                    color: const Color.fromRGBO(78, 154, 6, 1),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "₹300",
                                  style: GoogleFonts.commissioner(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
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
            label: 'My Job',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
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
