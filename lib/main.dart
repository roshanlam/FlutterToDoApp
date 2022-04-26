import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:todo/pages/login_screen.dart';
import 'package:todo/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseConfig.platformOptions,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Roshan's CRUD",
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.indigo, brightness: Brightness.dark),
      home: LoginScreen(),
    );
  }
}
