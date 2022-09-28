
import 'package:flutter/material.dart';
import 'home_components.dart';

List<Map<String, dynamic>> _UserQuizzList = [
  {
    'title': "Example 1",
    'description': "description 1",
    'question_count':10,
    'difficulty':'easy',
    'category': 'Informatique'
  },
  {
    'title': "Example 2",
    'description': "description 2",
    'question_count':10,
    'difficulty':'medium',
    'category': 'Maths'
  },
  {
    'title': "Example 3",
    'description': "description 3",
    'question_count':10,
    'difficulty':'easy',
    'category': 'Informatique'
  },
  {
    'title': "Example 4",
    'description': "description 4",
    'question_count':10,
    'difficulty':'medium',
    'category': 'Maths'
  },
];

String username = "Dano Fred";
String email = "createt29@gmail.com";

class UiHomePage extends StatefulWidget {
  const UiHomePage({super.key});

  @override
  State<UiHomePage> createState() => _UiHomePageState();
}

class _UiHomePageState extends State<UiHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // container pour les stats
        Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: QuizzStatsPreviewer(
            username: username,
            email: email,
            imagePath: 'images/user-default.png',
          ),
        ),

        // User's quizz
        Column(
          children: [
            Container(
              color: Colors.black54,
              alignment: Alignment.center,
              child: Text('Mes Quizz'),
              padding: const EdgeInsets.all(10),
            )
          ],
        ),

        // quizzPreview Area
        Expanded(
          child: Container(
            height: double.infinity,
            child: _UserQuizzList.isEmpty ? 
              
              Container(
                alignment: Alignment.center, 
                child: const Text("Aucun Quizz crée"),
              ) : GridView.count(
              crossAxisCount: 2,
              children: _UserQuizzList.map((e) {
                return Container(
                  margin: EdgeInsets.only(top: 10),
                  child: QuizzPreviewerBox(
                    title: e['title'],
                    description: e['description'],
                    category: e['category'],
                    difficulty: e['difficulty'],
                    questionCount: e['question_count'],
                    onCloseButtonClick: () {},
                    elevation: 5,
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}