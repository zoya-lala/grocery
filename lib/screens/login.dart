import 'package:flutter/material.dart';
import 'package:grocery_store/components/textfield.dart';
import 'package:grocery_store/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool pwdEye = false;

  @override
  Widget build(BuildContext context) {
    String email;
    String pwd;

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
          Positioned(
            child: SizedBox(
              height: 40.0,
              width: 40.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: kWhite,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: kDarkGreen,
                ),
              ),
            ),
            top: 20.0,
            left: 20.0,
          ),
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
                      'Log In',
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
                      'Welcome Back! Login with your details',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkGrey,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Textfield(
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
                      pwdText: true,
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
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: kLightestRed,
                      ),
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 20.0,
                            child: CircleAvatar(
                              child: Icon(
                                size: 12.0,
                                Icons.priority_high,
                                color: kWhite,
                              ),
                              backgroundColor: kRed,
                            ),
                          ),
                          Text(
                            'Incorrect Credentials',
                            style: TextStyle(
                              color: kRed,
                            ),
                          ),
                        ],
                      ),
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
                      onPressed: () {},
                      child: Text(
                        'Login',
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
                          'Forget your Password? ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kDarkGrey,
                          ),
                        ),
                        Text(
                          'Reset Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kDarkGreen,
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
