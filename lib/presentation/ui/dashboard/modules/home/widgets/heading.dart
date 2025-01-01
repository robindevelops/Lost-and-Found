import 'package:authentication/presentation/ui/dashboard/modules/All-Itemes/all_Items.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  String title;
  Heading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.blue[800],
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AllitemsScreen();
                },
              ),
            );
          },
          child: Text(
            "View all >",
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              decorationThickness: 1,
              color: Colors.blue[400],
            ),
          ),
        ),
      ],
    );
  }
}
