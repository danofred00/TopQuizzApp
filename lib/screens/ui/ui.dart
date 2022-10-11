import 'package:flutter/material.dart';
import 'package:top_quizz_project/screens/ui/search/search_screen.dart';
import 'package:top_quizz_project/screens/ui/settings/settings_screen.dart';
import 'ui_components.dart';
import 'home/home_screen.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 1;

  void floatingAction() {
    debugPrint("FloatingActionButton::clicked()");
  }

  void onTapItem(int index) {
    debugPrint("onTapItem::activate() " + index.toString());
    setState(() {
      currentIndex = index;
      _pageController.jumpToPage(index);
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
      body: PageView(
        controller: _pageController,
        onPageChanged: onTapItem,
        children: const [UiHomePage(), UiSearchPage(), UiSettingsPage()],
      ),
      bottomNavigationBar: quizzBottomNavigationBar(
          onTap: onTapItem, currentIndex: currentIndex),
      floatingActionButton: FloatingActionButton(
          tooltip: "Quizz Settings",
          onPressed: floatingAction,
          child: const Icon(Icons.menu)),
    );
  }
}
