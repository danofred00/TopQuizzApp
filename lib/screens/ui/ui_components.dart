
import 'package:flutter/material.dart';

// my custo, appbar
AppBar myAppBar(String title, {void Function()? onPressedMenu, void Function()? onPressedSearch}) {

  // default icoinSized value
  const double iconsSized = 35;
  const double titleSized = 30;

  return AppBar(
    // menu button
    leading: IconButton(
      iconSize: iconsSized,
      icon: const Icon(Icons.menu),
      onPressed: onPressedMenu,
    ),

    // appTitle
    centerTitle: true,
    title: Text(title, style: const TextStyle(fontSize: titleSized),),
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

