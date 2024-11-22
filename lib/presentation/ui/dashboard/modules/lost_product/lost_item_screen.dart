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
        title: Text(
          "Back",
          style: TextStyle(
            color: Colors.blue[800],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTextField("Category", categoryController),
                    SizedBox(height: 15),
                    buildTextField("Title of Report", titleController),
                    SizedBox(height: 15),
                    buildTextField(
                        "Where did you lose it?", locationController),
                    SizedBox(height: 15),
                    buildTextField(
                        "When did you last see it?", lastSeenController),
                    SizedBox(height: 15),
                    buildTextField("Additional Notes", notesController),
                    SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.upload_rounded,
                            color: Colors.black,
                          ),
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
            // Spacer to push the button to the bottom
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     backgroundColor: Colors.blue[800],
            //     minimumSize: Size(double.infinity, 60),
            //   ),
            //   onPressed: () {},
            //   child: Text(
            //     "Report it",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            // ),

            AppElevatedButton(
              text: "Report it",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildTextField(String title, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          color: Colors.blue[800],
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
      TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: const Color.fromARGB(
                255,
                2,
                60,
                127,
              ), // Blue
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: const Color.fromARGB(
                255,
                2,
                60,
                127,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
