import 'package:Misbah/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void userLogin() {
    String email = mailController.text;
    String password = passwordController.text;

    print("Email: $email, Password: $password");
    if (email == "Misbah" && password == "1234") {
      print("Login successful!");

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Hidden()),
      );
    } else {
      print("Login failed!");
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Login Failed"),
            content: Text("Invalid username or password."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff14141d),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/eye.jpg",
              height: 300,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff1e1e2a),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Log in",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 55),
                    TextField(
                      controller: mailController,
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(219, 255, 255, 255),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff6b63ff)),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      cursorColor: const Color(0xff6b63ff),
                    ),
                    const SizedBox(height: 60),
                    TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(219, 255, 255, 255),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff6b63ff)),
                        ),
                      ),
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: const Color(0xff6b63ff),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "I forgot",
                          style: GoogleFonts.poppins(
                            color: const Color(0xff6b63ff),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    GestureDetector(
                      onTap: () {
                        userLogin();
                      },
                      child: Center(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Log in",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset("assets/images/pat.png"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
