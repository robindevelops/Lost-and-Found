import 'package:authentication/core/constants/constants.dart';
import 'package:authentication/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class FoundScreen extends StatefulWidget {
  const FoundScreen({super.key});

  @override
  State<FoundScreen> createState() => _FoundScreenState();
}

class _FoundScreenState extends State<FoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  buildChoiceChip("All", 0),
                  SizedBox(width: 15),
                  buildChoiceChip("Active", 1),
                  SizedBox(width: 15),
                  buildChoiceChip("Inactive", 2),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      activeCard(
                        isActive: true,
                      ),
                      activeCard(
                        isActive: true,
                      ),
                      activeCard(
                        isActive: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper method to build ChoiceChip widgets
Widget buildChoiceChip(String label, int index) {
  List<bool> isSelected = [true, false, false];

  return ChoiceChip(
    showCheckmark: false,
    side: BorderSide.none,
    label: Text(
      label,
      style: TextStyle(
        fontSize: 16,
        color: isSelected[index] ? Colors.white : Colors.black,
      ),
    ),
    selected: isSelected[index],
    onSelected: (bool selected) {
      // setState(
      //   () {
      //     isSelected[index] = selected;
      //   },
      // );
    },
    selectedColor: Colors.blue[800],
    backgroundColor: Colors.grey[300],
  );
}

class activeCard extends StatelessWidget {
  bool isActive = true;
  activeCard({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      height: 130,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              Constants.laptopImg,
              fit: BoxFit.cover,
              height: 100,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Hp laptop",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Near colony",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "2 Weeks ago",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: isActive ? Colors.lightGreen : Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 30,
                width: 90,
                child: Center(
                  child: Text(
                    isActive ? "Active" : "inactive",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
