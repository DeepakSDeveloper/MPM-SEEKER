import 'package:flutter/material.dart';


// import 'package:mpm/MPMstart/splash.dart';
// import 'package:mpm/MPMstart/getstarted.dart';
// import 'package:mpm/MPMstart/register.dart';
// import 'package:mpm/MPMstart/getotp.dart';
// import 'package:mpm/MPMstart/verifyotp.dart';

import 'package:mpm/home/homedetail.dart';


// import 'package:mpm/jobs/nojob.dart';

// import 'package:mpm/jobs/myjobs.dart';
// import 'package:mpm/jobs/completedjobs.dart';
// import 'package:mpm/jobs/inprogress.dart';

// import 'package:mpm/wallet/wallet1.dart';
// import 'package:mpm/wallet/wallet2.dart';

// import 'package:mpm/profile/profilesetting.dart';
// import 'package:mpm/profile/editprofile.dart';

// import 'package:mpm/profile/kycdocumentidproof.dart';
// import 'package:mpm/profile/kycdocumentbankdetail.dart';

void main() {
  runApp(const GetStart());
}

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home:Splash(),
      // home: Start(),
      // home: Register(),
      // home:GetOtp(),
      // home:VerifyOtp(),

       home:HomeDetail(),
      
      // home:Nojob(),

      // home:MyJobs(),
      //  home:Completedjob(),
      //  home:Inprogress(),

      // home:Wallet1(),
      // home:Wallet2(),
      
      //  home:ProfileSetting(),
      // home: Editprofile(),
     
      // home:KycIDproof (),
      // home:KYCBankDetail(),
     
      
      
    );
  }
}
