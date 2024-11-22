import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/core/utils/dimensions.dart';
import 'package:authentication/presentation/ui/authentication/signin_screen.dart';
import 'package:authentication/presentation/ui/dashboard/dashboard_screen.dart';
import 'package:authentication/presentation/ui/authentication/widgets/text_field.dart';
import 'package:authentication/presentation/ui/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _Cpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppThemes.appScaffoaldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.HorizontalPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Signup",
              style: GoogleFonts.lato(
                fontSize: 40,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(height: Dimensions.dividerHeight),
            Text(
              "If you Already have an account?",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Text(
                  "You can",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(splashFactory: NoSplash.splashFactory),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SigninScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Login here!",
                    style: AppThemes.linethrough,
                  ),
                )
              ],
            ),
            SizedBox(height: Dimensions.Height),
            CustomTextField(
              icon: Icon(Icons.email),
              controller: _email,
              hintText: "Enter Your Email",
            ),
            SizedBox(height: Dimensions.Height),
            CustomTextField(
              icon: Icon(Icons.person_2_outlined),
              controller: _username,
              hintText: "Enter Your Username",
            ),
            SizedBox(height: Dimensions.Height),
            CustomTextField(
              isPassword: true,
              icon: Icon(Icons.lock),
              controller: _password,
              hintText: "Enter Your Password",
            ),
            SizedBox(height: Dimensions.Height),
            CustomTextField(
              isPassword: true,
              icon: Icon(Icons.lock),
              controller: _Cpassword,
              hintText: "Confirm Your Password",
            ),
            SizedBox(height: Dimensions.Height),
            AppElevatedButton(
              text: "Register",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DashboardScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
