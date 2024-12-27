// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? controller;
  String hintText;
  Icon icon;
  bool? isPassword;
  String? Function(String?)? validator;

  CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.icon,
      this.isPassword = false, // Default to false,
      this.validator});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword == true ? _obscureText : false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        prefixIcon: widget.icon,
        suffixIconColor: Colors.grey.shade500,
        suffixIcon: widget.isPassword == true
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        hintText: widget.hintText,
        hintStyle: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 15),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(
              255,
              2,
              60,
              127,
            ), // Blue
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(
              255,
              2,
              60,
              127,
            ),
          ),
        ),
      ),
    );
  }
}
