import 'package:authentication/core/utils/logger.dart';
import 'package:authentication/presentation/notifiers/filter_notifier.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryCard extends StatelessWidget {
  final String title;

  CategoryCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final Categorytabs = Provider.of<FilterNotifier>(context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Categorytabs.tabs.length,
              itemBuilder: (context, index) {
                final item = Categorytabs.tabs[index];
                return items(
                  itemname: item.title,
                  iconData: item.icon,
                  onTap: () {
                    print(
                      item.value,
                    );
                  },
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 20,
          child: Container(
            child: Text(
              title,
              style: const TextStyle(
                color: Color.fromARGB(255, 4, 83, 174),
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
