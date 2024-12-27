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
      builder: (context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Title
              Center(
                child: Text(
                  "Filter & Sort",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900],
                      ),
                ),
              ),
              const SizedBox(height: 20),

              // Sort By Section
              _sectionHeader("Sort By", context),
              Row(
                children: [
                  _buildChoiceChip(
                    "Newest",
                    selected: true,
                    onSelected: (isSelected) {},
                  ),
                  const SizedBox(width: 10),
                  _buildChoiceChip(
                    "Oldest",
                    selected: false,
                    onSelected: (isSelected) {},
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // Filters Section
              _sectionHeader("Filters", context),
              _customTextField(
                context,
                labelText: "Date Reported",
                icon: Icons.date_range,
                onTap: () {
                  // Add date picker logic
                },
              ),
              const SizedBox(height: 15),
              _customTextField(
                context,
                labelText: "Location",
                icon: Icons.location_on,
              ),
              const SizedBox(height: 25),

              // Category Section
              _sectionHeader("Category", context),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildChoiceChip("All",
                      selected: true, onSelected: (isSelected) {}),
                  _buildChoiceChip("Wallet",
                      selected: false, onSelected: (isSelected) {}),
                  _buildChoiceChip("Keys",
                      selected: false, onSelected: (isSelected) {}),
                  _buildChoiceChip("Bag",
                      selected: false, onSelected: (isSelected) {}),
                  _buildChoiceChip("Phone",
                      selected: false, onSelected: (isSelected) {}),
                  _buildChoiceChip("Other",
                      selected: false, onSelected: (isSelected) {}),
                ],
              ),
              const SizedBox(height: 30),

              // Show Button
              Center(
                child: AppElevatedButton(
                  text: "Apply Filters",
                  onPressed: () {
                    // Handle Apply Filters
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget: Section Header
  static Widget _sectionHeader(String title, BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[800],
          ),
    );
  }

  // Helper Widget: Custom Text Field
  static Widget _customTextField(BuildContext context,
      {required String labelText,
      required IconData icon,
      VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: TextField(
        readOnly: onTap != null,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey[700]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(icon, color: Colors.blueGrey[700]),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey[400]!),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  // Helper Widget: Choice Chip
  static Widget _buildChoiceChip(
    String label, {
    required bool selected,
    required ValueChanged<bool> onSelected,
  }) {
    return ChoiceChip(
      checkmarkColor: Colors.white,
      label: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.grey[800],
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: selected,
      onSelected: onSelected,
      selectedColor: const Color.fromARGB(255, 17, 83, 136),
      backgroundColor: Colors.grey[200],
      elevation: 2,
    );
  }
}
