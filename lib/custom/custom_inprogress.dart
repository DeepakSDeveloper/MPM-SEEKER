// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class CustomInprogress extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed; // Add this line

  const CustomInprogress({
    Key? key,
    required this.text,
    required this.icon,
    this.onPressed, // Add this line
  }) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 350,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 231, 228, 228),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 3,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Text(
                  "Gareden Cleaning",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Icon(
                        Icons.location_pin,
                        color: Color.fromRGBO(157, 118, 193, 5),
                        size: 18,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0,5),
                    child: Text(
                      'Gandhi Road,Velachery',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Padding(
                     padding: EdgeInsets.fromLTRB(0, 2, 0,18),
                      child: Text("View Details",
                          style: TextStyle(
                              color: Color.fromRGBO(157, 118, 193, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  const Padding(
                   padding: EdgeInsets.fromLTRB(0, 2, 0,18),
                    child: Icon(
                      Icons.cancel_outlined,
                      color: Color.fromRGBO(255, 7, 7, 1),
                      size: 16,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
