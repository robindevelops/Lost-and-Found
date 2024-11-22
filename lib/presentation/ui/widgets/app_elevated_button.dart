import 'package:authentication/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatefulWidget {
  String text;
  Color? buttoncolor;
  void Function()? onPressed;

  AppElevatedButton({
    super.key,
    this.text = '',
    required this.onPressed,
    this.buttoncolor,
  });

  @override
  State<AppElevatedButton> createState() => _AppElevatedButtonState();
}

class _AppElevatedButtonState extends State<AppElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(double.infinity, 60),
          backgroundColor: widget.buttoncolor ?? AppThemes.Darkblue),
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );
  }
}
