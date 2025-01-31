import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/firebase_options.dart';
import 'package:grocery_store/screens/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      // home: Location(),
      // home: Home(),
      // home: Onboarding(),
      // home: Login(),
      // home: ForgetPwd(),
      home: SignUp(),
    );
  }
}
