import 'package:flutter/material.dart';
import 'package:grocery_store/components/textfield.dart';
import 'package:grocery_store/constants.dart';

class ForgetPwd extends StatefulWidget {
  const ForgetPwd({super.key});

  @override
  State<ForgetPwd> createState() => _ForgetPwdState();
}

class _ForgetPwdState extends State<ForgetPwd> {
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forget Password',
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
                      'It\'s okay. Just type your Email and we will send a Link to reset your Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkGrey,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Textfield(
                      pwdText: false,
                      labelText: 'Email',
                      onChange: (value) {
                        email = value;
                      },
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
                        'Send Link to Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
