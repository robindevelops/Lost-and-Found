import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/core/utils/dimensions.dart';
import 'package:authentication/presentation/ui/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomModalBottomSheet {
  static void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.bottomSheetBorderRadius),
          topRight: Radius.circular(Dimensions.bottomSheetBorderRadius),
        ),
      ),
      backgroundColor: AppThemes.appScaffoaldColor,
      context: context,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height / 1.5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sorting Chips
                Text(
                  "Sort By",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ChoiceChip(
                      label: Text("Newest"),
                      selected: false,
                      onSelected: (isSelected) {},
                    ),
                    SizedBox(width: 10),
                    ChoiceChip(
                      label: Text("Oldest"),
                      selected: false,
                      onSelected: (isSelected) {
                        // Handle Oldest selection
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Filters
                Text(
                  "Filters",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(height: 10),

                // Date Reported TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: "Date Reported",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.date_range),
                  ),
                ),
                SizedBox(height: 15),

                // Location TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: "Location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.location_on),
                  ),
                ),
                SizedBox(height: 20),

                // Category Chips
                Text(
                  "Category",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  children: [
                    ChoiceChip(
                      label: Text("All"),
                      selected: false,
                      onSelected: (isSelected) {
                        // Handle All category selection
                      },
                    ),
                    ChoiceChip(
                      label: Text("Wallet"),
                      selected: false,
                      onSelected: (isSelected) {
                        // Handle Wallet category selection
                      },
                    ),
                    ChoiceChip(
                      label: Text("Keys"),
                      selected: false,
                      onSelected: (isSelected) {
                        // Handle Keys category selection
                      },
                    ),
                    ChoiceChip(
                      label: Text("Bag"),
                      selected: false,
                      onSelected: (isSelected) {
                        // Handle Bag category selection
                      },
                    ),
                    ChoiceChip(
                      label: Text("Phone"),
                      selected: false,
                      onSelected: (isSelected) {
                        // Handle Phone category selection
                      },
                    ),
                    ChoiceChip(
                      label: Text("Other"),
                      selected: false,
                      onSelected: (isSelected) {
                        // Handle Other category selection
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Button
                AppElevatedButton(
                  text: "Show",
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
