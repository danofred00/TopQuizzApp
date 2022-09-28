
import 'package:flutter/material.dart';
import 'ui_components.dart';
import 'home/home_screen.dart';

class UiScreen extends StatelessWidget {
  const UiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: quizzDrawerMenu(context, 0.0),

      appBar: myAppBar(
        'TopQuizz', 
        onPressedMenu: (){},
        onPressedSearch: (){},
      ),
      body: const UiHomePage(),
    );
  }
}