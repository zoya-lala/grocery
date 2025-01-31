import 'package:flutter/material.dart';
import 'package:grocery_store/components/textfield.dart';
import 'package:grocery_store/constants.dart';

class ChangePwd extends StatefulWidget {
  const ChangePwd({super.key});

  @override
  State<ChangePwd> createState() => _ChangePwdState();
}

class _ChangePwdState extends State<ChangePwd> {
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
                  children: [
                    Text(
                      'Change Password',
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
                      'Well Done! You successfully verified your account. Now Enter your new password.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkGrey,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Textfield(
                      pwdText: true,
                      labelText: 'Enter new password',
                      onChange: (value) {
                        email = value;
                      },
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
                      // onChange: (value) {
                      //   pwd = value;
                      // },
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
                      height: 15.0,
                    ),
                    Textfield(
                      pwdText: true,
                      labelText: 'Repeat Password',
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
                            'The password you entered did not matched',
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
                        'Change Password',
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
