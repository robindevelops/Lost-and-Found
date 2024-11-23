import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/ui/widgets/custom_sheet.dart';
import 'package:authentication/presentation/ui/dashboard/modules/home/widgets/product_card.dart';
import 'package:authentication/presentation/ui/dashboard/widgets/clipper.dart';
import 'package:flutter/material.dart';

class AllitemsScreen extends StatefulWidget {
  const AllitemsScreen({super.key});

  @override
  State<AllitemsScreen> createState() => _AllitemsScreenState();
}

class _AllitemsScreenState extends State<AllitemsScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      body: Column(
        children: [
          ClipPath(
            clipper: BottomCurveClipper(),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 100,
              width: double.infinity,
              color: Colors.blue[800],
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All items",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    CustomModalBottomSheet.showCustomBottomSheet(context);
                  },
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: Center(
                      child: Text("Filter"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200, // Maximum width for each item
                  crossAxisSpacing: 8.0, // Space between columns
                  mainAxisSpacing: 19.0, // Space between rows
                  childAspectRatio: 0.9, // Aspect ratio of the grid items
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ProductCard();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
