import 'package:authentication/core/routes/router.dart';
import 'package:authentication/core/themes/app_themes.dart';
import 'package:authentication/core/utils/dimensions.dart';
import 'package:authentication/presentation/ui/authentication/resetpassword_screen.dart';
import 'package:authentication/presentation/ui/dashboard/dashboard_screen.dart';
import 'package:authentication/presentation/ui/authentication/widgets/text_field.dart';
import 'package:authentication/presentation/ui/widgets/app_elevated_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final formKey = GlobalKey<FormState>(); // Form key for validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppThemes.appScaffoaldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.HorizontalPadding,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Signin",
                style: GoogleFonts.lato(
                  fontSize: 40,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(height: Dimensions.dividerHeight),
              Text(
                "Don't Have an account?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Create Now",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(splashFactory: NoSplash.splashFactory),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Signup here!",
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
                icon: Icon(Icons.password),
                controller: _password,
                hintText: "Enter Your Passoword",
                isPassword: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ResetPasswordScreen();
                      },
                    ));
                  },
                  child: Text(
                    "Forgot Password !!",
                    style: TextStyle(
                      color: AppThemes.Mediumblue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              AppElevatedButton(
                text: "Login",
                onPressed: () {
                  context.push(AppRouter.homePage);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return DashboardScreen();
                  //     },
                  //   ),
                  // );
                },
              ),
              SizedBox(height: Dimensions.dividerHeight),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Joining our app means you agree with our ',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms of Use',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppThemes.Darkblue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = _onTermsOfUseTapped,
                    ),
                    TextSpan(
                      text: ' and ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppThemes.Darkblue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = _onPrivacyPolicyTapped,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _onTermsOfUseTapped() {
  print('Terms of Use tapped');
}

void _onPrivacyPolicyTapped() {
  print('Privacy Policy tapped');
}
