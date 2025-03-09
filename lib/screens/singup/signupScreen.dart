import 'package:flutter/material.dart';
import 'package:instagram/screens/login/loginScreen.dart';
import 'package:instagram/widgets/uihelper.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customImage(imageUrl: "title-logo.png"),
                const SizedBox(height: 30),
                UiHelper.customTextField(
                  controller: usernameController,
                  hintText: 'username',
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                UiHelper.customTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                UiHelper.customTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 30),
                UiHelper.customButton(
                  btnName: "Sign Up",
                  callback: () {
                    print("Button Pressed!");
                  },
                  height: 40,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    UiHelper.CustomTextButton(
                        text: 'Sing In',
                        callback: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
