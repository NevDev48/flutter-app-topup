import 'package:flutter/material.dart';
import 'package:flutter_application_1/legend/Register.dart';
import 'package:flutter_application_1/legend/mobile_legends.dart';

import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SignInPage(),
        '/sign-in': (context) => SignInPage(),
        '/Register': (context) => SignUpPage(),
        '/menu': (context) => HomePage(),
      },
    );
  }
}
