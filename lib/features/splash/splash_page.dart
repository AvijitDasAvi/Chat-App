// import 'dart:async';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     checkIsLogin();
//   }

//   void checkIsLogin() {
//     Timer(const Duration(seconds: 3), () async {
//         if (mounted) {
//           Navigator.of(context).pushReplacement(
//             MaterialPageRoute(builder: (_) => const BottomNavbarScreen()),
//           );
//         }
//        else {
//         if (mounted) {
//           Navigator.of(context).pushReplacement(
//             MaterialPageRoute(builder: (_) => const AuthenticationScreen()),
//           );
//         }
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Image.asset(
//         // ImagePath.splashScreenLogo,
//         height: height,
//         width: width,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }