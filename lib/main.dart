import 'package:flutter/material.dart';
import 'package:top_quizz_project/screens/ui/ui.dart';
//import 'screens/sign/forgot_pwd_screen.dart';

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
      //home: const ForgotPasswdordPage(),
      home: const UiScreen(),
    );
  }
}

