import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/core/utils/dimensions.dart';
import 'package:authentication/presentation/animation/show_up.dart';
import 'package:authentication/presentation/ui/authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.Darkblue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowUpAnimation(
              delay: 800,
              child: Icon(
                Icons.person_search_rounded,
                color: Colors.white,
                size: 50,
              ),
            ),
            ShowUpAnimation(
              delay: 800,
              child: Text(
                "Lost and Found",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(height: Dimensions.bigDividerHeight),
            ShowUpAnimation(
              delay: 800,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                ),
                onPressed: () {},
                child: Text(
                  "Login Now",
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: AppThemes.Mediumblue,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ShowUpAnimation(
              delay: 800,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "I don't have an account",
                  style: AppThemes.linethrough.copyWith(
                    fontSize: 16,
                    color: Colors.white,
                    decorationColor: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
