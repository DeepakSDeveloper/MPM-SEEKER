
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mpm/MPMstart/getstarted.dart';


class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(const Duration(seconds: 3), () {
    
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Start(),
        ),
      );
    }
    );

    return Scaffold(
      body: Center(
        child: Lottie.asset('lib/images/json/pig bank.json'),
      ),
    );
  }
}

