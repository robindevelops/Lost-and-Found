import 'package:flutter/material.dart';

class items extends StatelessWidget {
  final String itemname;
  final IconData? iconData;
  void Function()? onTap;

  items({
    super.key,
    required this.itemname,
    this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 65,
            width: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: Icon(
              iconData,
              size: 30,
              color: Colors.blue[800],
            ),
          ),
          SizedBox(height: 4),
          Text(
            itemname,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 3, 88, 158),
            ),
          )
        ],
      ),
    );
  }
}
