import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Screens/HomeScreen/home_screeen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/Signin page.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      height: 200,
                      image: AssetImage(
                          'assets/LOGO EADS Text Black Version 2.png')),
                  Text(
                    "Sign in to continue",
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Column(
                    children: [
                      SizedBox(height: 5),
                      SignInButton(
                        Buttons.google,
                        text: "Sign up with Google",
                        onPressed: () {
                          _googleSignUp().then(
                            (value) => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            ),
                          );
                        },
                      ),
                      SignInButton(
                        Buttons.facebook,
                        text: "Sign up with Facebook",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.apple,
                        text: "Sign up with Apple",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "By siging in you are agreeing to our",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(height: 5),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Terms & Privacy Policy',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
