import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/presentation/ui/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';

class LostItemScreen extends StatefulWidget {
  const LostItemScreen({super.key});

  @override
  State<LostItemScreen> createState() => _LostItemScreenState();
}

class _LostItemScreenState extends State<LostItemScreen> {
  // TextEditingControllers for the text fields
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController lastSeenController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  @override
  void dispose() {
    // Dispose of controllers to avoid memory leaks
    categoryController.dispose();
    titleController.dispose();
    locationController.dispose();
    lastSeenController.dispose();
    notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      appBar: AppBar(
        backgroundColor: AppThemes.appScaffoaldColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    buildTextField(
                      "Category",
                      categoryController,
                      "Enter the category of the lost item",
                    ),
                    const SizedBox(height: 15),
                    buildTextField(
                      "Title of Report",
                      titleController,
                      "Enter a title for your report",
                    ),
                    const SizedBox(height: 15),
                    buildTextField(
                      "Where did you lose it?",
                      locationController,
                      "Enter the location where you lost it",
                    ),
                    const SizedBox(height: 15),
                    buildTextField(
                      "When did you last see it?",
                      lastSeenController,
                      "Enter the last time you saw the item",
                    ),
                    const SizedBox(height: 15),
                    buildTextField(
                      "Additional Notes",
                      notesController,
                      "Enter any additional details",
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.upload_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Choose Photo",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppElevatedButton(
              text: "Report it",
              onPressed: () {
                // Handle button press logic
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildTextField(
  String title,
  TextEditingController controller,
  String hintText,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          color: Colors.blue[800],
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      const SizedBox(height: 10),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none, // Remove default border
            contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
            focusedBorder: InputBorder.none, // Remove focus border
            enabledBorder: InputBorder.none, // Remove enabled border
          ),
        ),
      ),
    ],
  );
}
