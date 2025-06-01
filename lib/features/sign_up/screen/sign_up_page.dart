import 'package:chat_app/features/login/page/login_page.dart';
import 'package:chat_app/widgets/color_manager.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/login.jpg",
              fit: BoxFit.cover,
              height: height / 3,
              width: width,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                bottom: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //For name
                  Text(
                    "Name",
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
                        hintText: "Enter the name",
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(103, 255, 255, 255),
                        ),
                        suffixIcon: Icon(
                          Icons.person,
                          color: Colors.white60,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
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
                      obscureText: _obscure,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter the password",
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(103, 255, 255, 255),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            },
                            icon: Icon(_obscure
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //For confirm password
                  Text(
                    "Confirm Password",
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
                      obscureText: _obscure,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter the confirm password",
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(103, 255, 255, 255),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscure = !_obscure;
                            });
                          },
                          icon: Icon(_obscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: GestureDetector(
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
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "LogIn",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
