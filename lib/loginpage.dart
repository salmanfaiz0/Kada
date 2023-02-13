import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/textfield_widget.dart';
import 'package:flutter_application_2/view/forgotpage.dart';
import 'package:flutter_application_2/view/homepage.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isChecked = false;

  bool _passwordShow = true;

  final _userController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

// TEXTFIELD ///
  // Widget textfieldWidget(
  //     {required String hinmtname,
  //     required TextEditingController controller,
  //     required Icon iconButton,
  //     IconButton? iconHidden,
  //     bool obscureText = false}) {
  //   return Container(
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(7), color: Colors.grey[200]),
  //     child: TextField(
  //       controller: controller,
  //       obscureText: obscureText,
  //       decoration: InputDecoration(
  //           border: InputBorder.none,
  //           prefixIcon: iconButton
  //           //  Icon(
  //           //   Icons.lock_outline,
  //           // ),
  //           ,
  //           suffixIcon: iconHidden,
  //           hintText: hinmtname),
  //     ),
  //   );
  // }
// TEXTFIELD //////////////////////////////////

// SignIn Button //////////////////////////////////
  // Widget signButton() {
  //   return ElevatedButton(
  //     style: ElevatedButton.styleFrom(
  //         minimumSize: Size(MediaQuery.of(context).size.width, 50),
  //         backgroundColor: Colors.lightBlue[300]),
  //     onPressed: () {
  //       if (_emailController.text == "admin" &&
  //           _passwordController.text == "123" &&
  //           _userController.text.isNotEmpty) {
  //         Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => MainPage(username: _userController.text),
  //             ));
  //       } else {
  //         final message = SnackBar(
  //           content: Text("Incorrect email or password !"),
  //           action: SnackBarAction(label: "Done", onPressed: () {}),
  //         );
  //         ScaffoldMessenger.of(context).showSnackBar(message);
  //       }
  //     },
  //     child: Text(
  //       "Sign In",
  //       style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  //     ),
  //   );
  // }
// SignIn Button //////////////////////////////////

  @override
  void dispose() {
    _userController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Text("Sign In your account"),
          SizedBox(
            height: 110,
          ),
          TextFieldWidget().textfieldWidget(
            hinmtname: "Enter your name",
            controller: _userController,
            iconButton: Icon(Icons.person),
          ),
          SizedBox(
            height: 22,
          ),
          TextFieldWidget().textfieldWidget(
              hinmtname: "Enter your email address",
              controller: _emailController,
              iconButton: Icon(Icons.mail_outline_outlined)),
          SizedBox(
            height: 22,
          ),
          TextFieldWidget().textfieldWidget(
              hinmtname: "Enter your password",
              controller: _passwordController,
              iconButton: Icon(Icons.lock_outline),
              iconHidden: IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordShow = !_passwordShow;
                      // if (_passwordShow) {
                      //   _passwordShow = false;
                      // } else {
                      //   _passwordShow = true;
                      // }
                    });
                  },
                  icon: Icon(_passwordShow == true
                      ? Icons.remove_red_eye_rounded
                      : Icons.close)),
              obscureText: _passwordShow),
          Row(
            children: [
              Checkbox(
                  value: _isChecked,
                  onChanged: (value) => setState(() {
                        _isChecked = value!;
                      })),
              Text("Remember Me"),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          TextFieldWidget().signButton(
              context: context,
              title: "Sign In",
              buttonAction: () {
                if (_emailController.text == "admin" &&
                    _passwordController.text == "123" &&
                    _userController.text.isNotEmpty) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MainPage(username: _userController.text),
                      ));
                } else {
                  final message = SnackBar(
                    content: Text("Incorrect email or password !"),
                    action: SnackBarAction(label: "Done", onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                }
              }),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPage(),
                  ));
            },
            child: Text(
              "Forgot your password?",
              style: TextStyle(
                  color: Colors.orange[800], fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ));
  }
}
