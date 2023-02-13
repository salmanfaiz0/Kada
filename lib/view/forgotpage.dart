import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/utils/textfield_widget.dart';

class ForgotPage extends StatelessWidget {
  final forgotpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Forgot\nPassword?",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Image.network(
              "https://static.vecteezy.com/system/resources/previews/011/019/164/original/3d-character-guy-png.png"),
          SizedBox(
            height: 15,
          ),
          TextFieldWidget().textfieldWidget(
            hinmtname: 'Enter Your Email Address',
            controller: forgotpassword,
            iconButton: Icon(Icons.question_mark_rounded),
          ),
          SizedBox(
            height: 30,
          ),
          TextFieldWidget().signButton(
              context: context,
              buttonAction: () {
                Navigator.pop(context);
              },
              title: "Reset Password"),
        ]),
      ),
    );
  }
}
