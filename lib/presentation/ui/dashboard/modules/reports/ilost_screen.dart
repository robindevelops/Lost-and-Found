import 'package:authentication/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LostScreen extends StatefulWidget {
  const LostScreen({super.key});

  @override
  State<LostScreen> createState() => _LostScreenState();
}

class _LostScreenState extends State<LostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: NoLostItemsCard(
                // onActionPressed: () {},
                ),
          ),
        ],
      ),
    );
  }
}

class NoLostItemsCard extends StatelessWidget {
  const NoLostItemsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sentiment_dissatisfied_outlined,
              size: 100,
              // color: Colors.blueAccent.shade200, // A modern and vibrant color
            ),
            const SizedBox(height: 20),
            Text(
              "No Lost Items Found",
              style: GoogleFonts.lato(
                // Using Lato for a clean, professional font
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              "No items have been reported yet. Check back later or report a lost item!",
              style: GoogleFonts.lato(
                fontSize: 14,
                color: Colors.black54,
                height: 1.6, // Improved readability
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
