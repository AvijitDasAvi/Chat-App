import 'package:chat_app/widgets/color_manager.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/login.jpg",
            fit: BoxFit.cover,
            height: height / 3,
            width: width,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "LogIn",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.0,
                ),

                //For email
                Text(
                  "Email",
                  style: TextStyle(
                      color: const Color.fromARGB(221, 255, 255, 255),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 27, 27, 27),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter the email",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(103, 255, 255, 255),
                      ),
                      suffixIcon: Icon(
                        Icons.mail,
                        color: Colors.white60,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //For password
                Text(
                  "Password",
                  style: TextStyle(
                      color: const Color.fromARGB(221, 255, 255, 255),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 27, 27, 27),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter the password",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(103, 255, 255, 255),
                      ),
                      suffixIcon: Icon(
                        Icons.password,
                        color: Colors.white60,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: const Color.fromARGB(162, 19, 121, 255),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: ColorManager.buttonColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: 200,
                        decoration: BoxDecoration(
                          color: ColorManager.buttonColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            "LogIn",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
