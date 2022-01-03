import 'package:flutter/material.dart';
import 'package:singup_with_firebase/screen/login.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController emailController;
  String labelText;
  String hintText;
  bool obscureValue;

   CustomTextField({Key? key,required this.emailController,required this.labelText,
     required this.hintText, required this.obscureValue}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 28, left: 28),
      child: TextFormField(
        obscureText: widget.obscureValue,
        cursorColor: allColour.appColor,
        controller: widget.emailController,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: TextStyle(color: allColour.appColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: allColour.appColor
              )

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: allColour.appColor
            )

          )

        ),
      ),
    );
  }
}
