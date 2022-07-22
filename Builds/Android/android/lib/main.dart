import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transparent Login App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 200,
                  left: -100,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Color(0x304599ff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: -10,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color(0x30cc33ff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 80,
                      sigmaY: 80,
                    ),
                    child: Container(),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        _logo(),
                        const SizedBox(
                          height: 70,
                        ),
                        _loginLabel(),
                        const SizedBox(
                          height: 70,
                        ),
                        _labelTextInput("What's your group name?", "", false),
                        const SizedBox(
                          height: 50,
                        ),
                        _labelTextInput("What's your team tag?", "", true),
                        const SizedBox(
                          height: 90,
                        ),
                        _loginBtn(),
                        const SizedBox(
                          height: 90,
                        ),
                        _signUpLabel("Do I have an account?",
                            const Color(0xff909090)),
                        const SizedBox(
                          height: 10,
                        ),
                        _signUpLabel("Sign Up", const Color(0xff164276)),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style: const TextStyle(
        fontFamily: 'OpenSans'
    ),
  );
}

Widget _loginBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0x34568B),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: () => {},
      child: const Text(
        "Snip Dashboard",
        style: TextStyle(
            fontFamily: 'OpenSans'
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
            fontFamily: 'OpenSans'
        ),
      ),
      TextField(
        obscureText: isPassword,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              fontFamily: 'OpenSans'
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffdfe8f3)),
          ),
        ),
      ),
    ],
  );
}

Widget _loginLabel() {
  return const Center(
    child: Text(
      "Snippy Client v0.0.1a",
      style: TextStyle(
          fontFamily: 'OpenSans'
      ),
    ),
  );
}

Widget _logo() {
  return Center(
    child: SizedBox(
      height: 80,
      child: Image.network("https://github.com/NiRuX/Snippy-deprecated/blob/master/app/src/main/ic_launcher-web.png?raw=true"),
    ),
  );
}
