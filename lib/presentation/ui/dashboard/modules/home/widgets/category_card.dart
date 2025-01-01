import 'package:authentication/core/utils/logger.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/items.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String title;
  CategoryCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
          ),
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  items(
                    itemname: 'Wallet',
                    iconData: Icons.wallet,
                    onTap: () {
                      Log.i("wallet");
                    },
                  ),
                  items(
                    itemname: 'Mobile',
                    iconData: Icons.mobile_screen_share_sharp,
                    onTap: () {},
                  ),
                  items(
                    itemname: 'Tablet',
                    iconData: Icons.tablet_mac,
                    onTap: () {},
                  ),
                  items(
                    itemname: 'Watch',
                    iconData: Icons.watch,
                    onTap: () {},
                  ),
                  items(
                    itemname: 'Keys',
                    iconData: Icons.key,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 20,
          child: Container(
            // color: Colors.white,
            child: Text(
              title,
              style: TextStyle(
                color: const Color.fromARGB(255, 4, 83, 174),
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
        )
      ],
    );
  }
}
