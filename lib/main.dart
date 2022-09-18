import 'package:flutter/material.dart';
import 'package:top_quizz_project/screens/sign_screen/forgot_pwd_screen.dart';
import 'package:top_quizz_project/screens/sign_screen/sign_in_screen.dart';
import 'package:top_quizz_project/screens/sign_screen/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TopQuizz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignUpPage(),
    );
  }
}

