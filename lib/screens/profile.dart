import 'package:flutter/material.dart';
import 'package:grocery_store/constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CircleAvatar(),
            Text(
              'data',
              textAlign: TextAlign.center,
              style: kHeading,
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(130, 40),
                  backgroundColor: kDarkGreen,
                  foregroundColor: kWhite,
                ),
                onPressed: () {},
                child: Text(
                  'Edit Profile',
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Menu(
              leadingIcon: Icon(
                Icons.settings,
              ),
              title: Text('Settings'),
            ),
            Divider(),
            Menu(
              leadingIcon: Icon(
                Icons.settings,
              ),
              title: Text('Settings'),
            ),
            Divider(),
            Menu(
              leadingIcon: Icon(
                Icons.settings,
              ),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  final Icon? leadingIcon;
  final Text? title;
  const Menu({this.leadingIcon, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIcon,
      title: title,
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}
