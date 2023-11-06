import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Nojob extends StatefulWidget {
  const Nojob({Key? key}) : super(key: key);

  @override
  State<Nojob> createState() => _NojobState();
}

class _NojobState extends State<Nojob> {
  int _selectedIndex = 0; // Add this line

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                    'lib/images/Quitting a job.svg',
                    semanticsLabel: 'My SVG Image',
                    height: 300,
                    width: 300,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Oops...!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color:const Color.fromRGBO(157, 118, 193, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'I apologize, but there are currently no jobs available.\n Please feel free to apply for the job\n and return here.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.commissioner(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                
              ],
              
            ),
          ],
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
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        backgroundColor:const Color.fromRGBO(157, 118, 193, 1),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
