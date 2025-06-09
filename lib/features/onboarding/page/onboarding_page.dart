import 'package:chat_app/services/auth_service.dart';
import 'package:chat_app/widgets/bottom_curve_clipper.dart';
import 'package:chat_app/widgets/color_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: BottomCurveClipper(),
            child: Image.asset(
              "assets/images/onboarding.jpeg",
              height: height / 1.5,
              width: width,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                Text(
                  "Enjoy the new experience of\n chatting with global friends",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Connect people around the world for free",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: ColorManager.buttonColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        try {
                          await AuthService().logWithGoogle(context);
                        } catch (e) {
                          if (kDebugMode) {
                            print("Sign-in error: $e");
                          }
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/google.png",
                            height: 40.0,
                            width: 40.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            "Sign in with Google",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
