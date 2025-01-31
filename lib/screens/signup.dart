import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/components/textfield.dart';
import 'package:grocery_store/constants.dart';
import 'package:grocery_store/screens/home.dart';
import 'package:grocery_store/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool pwdEye = false;
  bool isStrong = false;
  String? email;
  String? pwd;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/kiwi.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Positioned(
          //   child: SizedBox(
          //     height: 40.0,
          //     width: 40.0,
          //     child: Card(
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(5.0),
          //       ),
          //       color: kWhite,
          //       child: Icon(
          //         Icons.arrow_back_ios_new,
          //         color: kDarkGreen,
          //       ),
          //     ),
          //   ),
          //   top: 20.0,
          //   left: 20.0,
          // ),
          Positioned(
            bottom: 0,
            // left: 0,
            // right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              // alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              height: 630.0,
              // width: 200,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Hi! Let\'s create your account.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkGrey,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Textfield(
                      isStrong: false,
                      pwdText: false,
                      labelText: 'Email',
                      onChange: (value) {
                        email = value;
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Textfield(
                      isStrong: true,
                      pwdText: !pwdEye,
                      labelText: 'Password',
                      icon: IconButton(
                        onPressed: () {
                          setState(() {
                            pwdEye = !pwdEye;
                          });
                        },
                        icon: Icon(
                          pwdEye ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                      onChange: (value) {
                        pwd = value;
                      },
                      // icon: pwdEye?Icons.remove_red_eye:Icons.abc_rounded,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '\u2022 Password must have 8 characters',
                    ),
                    Text(
                      '\u2022 Must contain number or special character',
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    MaterialButton(
                      minWidth: double.infinity,
                      padding: EdgeInsets.all(20.0),
                      color: kDarkGreen,
                      textColor: kWhite,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () async {
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email!, password: pwd!);
                          print(email);
                          if (newUser != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kDarkGrey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kDarkGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: kDarkGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'images/google.png',
                            height: 20.0,
                          ),
                          backgroundColor: kLightestRed,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CircleAvatar(
                          child: Image.asset(
                            'images/fb.png',
                            height: 20.0,
                          ),
                          backgroundColor: kLightBlue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
