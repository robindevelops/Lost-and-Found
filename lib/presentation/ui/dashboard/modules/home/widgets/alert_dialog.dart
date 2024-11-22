import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: const Text(
        'What do you want to report?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildOptionCard(
            text: 'I found\nan item',
          ),
          const SizedBox(width: 10),
          buildOptionCard(
            text: 'I lost\nan item',
          ),
        ],
      ),
    );
  }
}

class buildOptionCard extends StatelessWidget {
  final String text;
  const buildOptionCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 110,
      width: 110,
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.lato(
            color: Colors.blue[800],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
