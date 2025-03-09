import 'package:flutter/material.dart';

class UiHelper {
  // Custom text button
  // static Widget CustomTextButton(
  //     {required String text, required VoidCallback callback}) {
  //   return TextButton(
  //       onPressed: () {
  //         callback();
  //       },
  //       style: TextButton.styleFrom(
  //         overlayColor: Color(Colors.white), // Remove click effect
  //         padding: EdgeInsets.all(0),
  //       ),
  //       child: Text(
  //         text,
  //         style: TextStyle(
  //           fontSize: 12,
  //           color: Color(0XFF3797EF),
  //           // decoration: TextDecoration.underline,
  //         ),
  //       ));
  // }
  static Widget CustomTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return InkWell(
      onTap: callback,
      splashColor: Colors.transparent, // Remove ripple effect
      highlightColor: Colors.transparent, // Remove highlight effect
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Color(0XFF3797EF),
          ),
        ),
      ),
    );
  }


  // Custom Text Field
  static Widget customTextField({
    required TextEditingController controller,
    required String hintText,
    required bool obscureText,
    required TextInputType keyboardType,
  }) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 14, color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, color: Colors.white54),
          filled: true,
          fillColor: const Color(0XFF121212),
          // for input background color
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Colors.white,
              // width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Color(0XFF3797EF), // Neon Blue
              // width: 1, // Slightly thicker border for better visibility
            ),
          ),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }

  // Custom Image Widget
  static Widget customImage(
      {required String imageUrl, double? height, double? width}) {
    return Image.asset(
      "assets/images/$imageUrl",
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }

//   Custom Button
  static Widget customButton({
    required String btnName,
    required VoidCallback callback,
    double height = 50,
  }) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XFF3797EF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            )),
        child: Center(
          child: Text(
            btnName,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
