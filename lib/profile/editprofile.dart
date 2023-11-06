// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpm/profile/profilesetting.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  String dropdownvalue = 'Gender';

  // List of items in our dropdown menu
  var items = [
    'Gender',
    // 'I',
    'male',
    'female',
    'others',
  ];

  // ignore: prefer_final_fields
  var _formKey = GlobalKey<FormState>();
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
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
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Edit',
                          style: GoogleFonts.commissioner(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' Profile',
                          style: GoogleFonts.commissioner(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: const Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        maxRadius: 43,
                        backgroundImage: AssetImage("lib/images/naren.jpg"),
                      ),
                      const SizedBox(width: 20),
                      Positioned(
                        // ignore: sort_child_properties_last
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt),
                        ),
                        bottom: -15,
                        left: 40,
                        top: 40,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Change profile",
                style: TextStyle(
                    color: Color.fromRGBO(157, 118, 193, 1),
                    decoration: TextDecoration.underline,
                    fontSize: 12),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Form(
                      key: _formKey,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(157, 118, 193, 1),
                          )),
                          suffixIcon: Icon(
                            Icons.edit,
                            color: Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Form(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(157, 118, 193, 1)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.edit,
                            color: Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Form(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Phone No",
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(157, 118, 193, 1),
                          )),
                          suffixIcon: Icon(
                            Icons.edit,
                            color: Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Add More Details",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(
                            158,
                            118,
                            193,
                            1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: DropdownButtonFormField<String>(
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          fillColor: Colors.black12,
                          filled: true),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Form(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Age",
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(157, 118, 193, 1),
                          )),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Form(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Location",
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(157, 118, 193, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Color.fromRGBO(157, 118, 193, 1),
                          )),
                          suffixIcon: Icon(
                            Icons.location_pin,
                            color: Color.fromRGBO(157, 118, 193, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 7.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: const Color.fromRGBO(157, 118, 193, 1),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Save Details',
                      style: GoogleFonts.commissioner(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'My Job'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person')
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
