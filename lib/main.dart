import 'package:flutter/material.dart';
import 'package:flutterassignment4/ForgotPassword.dart';
import 'package:flutterassignment4/WelcomeBack.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context) => WelcomeBack(),
        "fp": (context) => ForgotPassword(),
      },
      initialRoute: "/",

      theme: ThemeData().copyWith(
  colorScheme: ThemeData().colorScheme.copyWith(
    primary: Colors.green,
  ),
),
    );
  }
}