import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/homepage.dart';

class TextFieldWidget {
  final _userController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // TEXTFIELD //////////////////////////////////
  Widget textfieldWidget(
      {required String hinmtname,
      required TextEditingController controller,
      required Icon iconButton,
      IconButton? iconHidden,
      bool obscureText = false}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.grey[200]),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: iconButton
            //  Icon(
            //   Icons.lock_outline,
            // ),
            ,
            suffixIcon: iconHidden,
            hintText: hinmtname),
      ),
    );
  }
// TEXTFIELD //////////////////////////////////

// SignIn Button //////////////////////////////////
  Widget signButton(
      {required BuildContext context,
      void Function()? buttonAction,
      String? title}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width, 50),
          backgroundColor: Colors.lightBlue[300]),
      onPressed: buttonAction,
      child: Text(
        title!,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
// SignIn Button //////////////////////////////////
}
