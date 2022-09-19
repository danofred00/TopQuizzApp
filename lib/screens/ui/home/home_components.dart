import 'package:flutter/material.dart';

class QuizzStatsPreviewer extends StatelessWidget {
  final String imagePath;
  final String username;
  final String email;
  const QuizzStatsPreviewer({
    this.imagePath = '', 
    required this.username, 
    required this.email
  });

  //bool _showImage = image_path.isEmpty ? false : true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // User's Image
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black
          ),
          padding: EdgeInsets.all(3.0),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: Text(
              username[0],
              style: TextStyle(
                  color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
            ),
            radius: 50,
          ),
        ),

        /*
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              image: image_path.isEmpty
                  ? null
                  : DecorationImage(
                      image: AssetImage(image_path),
                    )),
          child: image_path.isEmpty
              ? Text(
                  username[0],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                )
              : null,
        ),

        */

        // User's Stats
        Expanded(
            child: Container(
          height: 100,
          child: Column(            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(username.toUpperCase(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              Text(email),
              _itemColumn3(
                cText: " Nombre de quizz joué(s) : ",
                bText: "5",
                iconData: Icons.numbers
              ),

              _itemColumn3(
                cText: " Points accumulés : ",
                bText: "100",
                iconData: Icons.account_tree_outlined
              ),
            ],
          ),
        ))
      ],
    );
  }
}


// QuizzPreviewerBox
class QuizzPreviewerBox extends StatelessWidget {

  final String title;
  final String description;
  final Function()? onCloseButtonClick; 
  final String category;
  final int questionCount;
  final String difficulty;

  final double width;
  final double height;
  final double elevation;

  // Constructor 
  const QuizzPreviewerBox({
    super.key, 
    this.width = 150,               // width of the box
    this.height = 200,              // height of the box
    this.elevation = 2,             // elevation's Shadow of the box
    required this.title,            // title of the quizz
    required this.description,      // description of the quizz
    required this.category,         // category of the quizz
    required this.questionCount,   // number of question of the quizz
    required this.difficulty,       // difficulty of the quizz
    this.onCloseButtonClick, // width of the box
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      elevation: elevation,
      child: Container(
        height: height,
        child: Column(
          children: [
            // header
            Row(
              children: [
                Expanded(child: Text(title)),
                IconButton(onPressed: onCloseButtonClick, icon: const Icon(Icons.close))
              ],
            ),

            // body
            Expanded(
                child: Wrap(
              children: [Text(description)],
            )),
            // footer
            Container(
              decoration: const BoxDecoration(border: Border(top: BorderSide())),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _itemColumn3(
                    iconData: Icons.category,
                    cText: "Categorie : ",
                    bText: category,
                  ),
                  _itemColumn3(
                    iconData: Icons.numbers,
                    cText: "Nbrs de Question : ",
                    bText: questionCount.toString(),
                  ),
                  _itemColumn3(
                    iconData: Icons.work,
                    cText: "Difficulte : ",
                    bText: difficulty
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _itemColumn3({
  required IconData iconData,
  double iconSize = 20, 
  required String cText, 
  required String bText,
  double txtfontSize=13,
  })  {

  return Row(
    children: [
      Icon(iconData, size: iconSize),
      Text(cText, style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: txtfontSize,
      ),),
      Text(bText)
    ],
  );
}