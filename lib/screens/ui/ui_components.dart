import 'package:flutter/material.dart';
import 'package:top_quizz_project/functions/maths.dart';

// my custo, appbar
AppBar myAppBar(String title,
    {void Function()? onPressedMenu, void Function()? onPressedSearch}) {
  // default icoinSized value
  const double iconsSized = 35;
  const double titleSized = 30;

  return AppBar(
    // menu button
    /*
    leading: IconButton(
      iconSize: iconsSized,
      icon: const Icon(Icons.menu),
      onPressed: onPressedMenu,
    ),
    */

    // appTitle
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(fontSize: titleSized, fontWeight: FontWeight.bold),
    ),
    actions: <Widget>[
      // search button
      IconButton(
        tooltip: "Rechercher",
        iconSize: iconsSized,
        icon: const Icon(Icons.search_rounded),
        onPressed: onPressedSearch,
      ),
    ],
  );
}

Widget quizzDrawerMenu(BuildContext context, double padding,
    {String imagePath = 'images/user-default.png',
    Color bgColor = Colors.white,
    double widthPercent = 70.0,
    String? username}) {
  //////////////////////////
  return Container(
    width: byPercent(MediaQuery.of(context).size.width, widthPercent),
    decoration: BoxDecoration(color: bgColor),
    child: ListView(
      padding: EdgeInsets.all(padding),
      children: <Widget>[
        quizzDrawerHeader(
            imagePath: imagePath,
            topText: Text(
              '$username'.toUpperCase(),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            bottomText: Text(
              'createt29@gmail.com'.toLowerCase(),
              style: const TextStyle(fontSize: 12),
            )),

        // additionals boxes
        
      ],
    ),
  );
}

////////////////////////////////////////////
// MyCustom Drawer HeaderBar
Widget quizzDrawerHeader({
  required String imagePath, 
  required Widget topText, 
  required Widget bottomText,
  Color bgColor = Colors.blue,
  }){

  return Container(
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(150),
        bottomRight: Radius.circular(150))
    ),
    child: Column(
      children: <Widget>[
        DrawerHeader(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              padding: EdgeInsets.zero,
              child: quizzCircleAvatar(imagePath: imagePath)),
        ),

        //////
        Container(
                  height: 150,
                child: Column(
                  children: <Widget>[
                    topText,
                    bottomText
                  ],
                ),
              ),
      ],
    ),
  );
}


/////////////////////////////////////////////
// My Custom Circle Avatar
Widget quizzCircleAvatar({
  String? imagePath,
  String? username,
  double padding = 3.0,
  Color borderColor = Colors.black,
}) {
  // body of the function
  bool _showImage = imagePath!.isEmpty || (imagePath == null) ? false : true;

  return Container(
    alignment: Alignment.center,
    width: 100,
    height: 100,
    padding: EdgeInsets.all(padding),
    margin: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: borderColor,
      shape: BoxShape.circle,
    ),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          image: !_showImage
              ? null
              : DecorationImage(
                  image: AssetImage(imagePath),
                )),
      child: !_showImage
          ? Text(
              username![0],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            )
          : null,
    ),
  );
}
