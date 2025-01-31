import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class Textfield extends StatelessWidget {
  const Textfield(
      {this.labelText, this.onChange, this.pwdText, this.icon, this.isStrong});
  final String? labelText;
  final Function(String)? onChange;
  final bool? pwdText;
  final IconButton? icon;
  final bool? isStrong;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              labelText!,
              style: TextStyle(
                // color: kWhite,
                // fontWeight: FontWeight.w700,
                fontSize: 15.0,
              ),
            ),
            if (isStrong!)
              Text(
                'Strong',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kLightGreen,
                ),
              ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          obscureText: pwdText!,
          cursorColor: kLightGreen,
          cursorErrorColor: kRed,
          keyboardType: TextInputType.emailAddress,
          autofocus: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                // borderSide: BorderSide(color: kLightGreen),
                ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kLightGreen),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kRed),
            ),
            suffixIcon: icon,
          ),
          onChanged: onChange,
        ),
      ],
    );
  }
}
