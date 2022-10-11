import 'package:flutter/material.dart';
import 'ui_components.dart';
import 'home/home_screen.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  int currentIndex = 1;

  void floatingAction() {
    debugPrint("FloatingActionButton::clicked()");
  }

  void onTapItem(int index) {
    debugPrint("onTapItem::activate() " + index.toString());
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: quizzDrawerMenu(context, 0.0),
      appBar: myAppBar(
        'TopQuizz',
        onPressedMenu: () {},
        onPressedSearch: () {},
      ),
      body: const UiHomePage(),
      bottomNavigationBar: quizzBottomNavigationBar(
          onTap: onTapItem, currentIndex: currentIndex),
      floatingActionButton: FloatingActionButton(
          tooltip: "Quizz Settings",
          onPressed: floatingAction,
          child: const Icon(Icons.menu)),
    );
  }
}
