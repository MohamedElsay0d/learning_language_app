import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class family extends StatelessWidget {
  const family({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Family_Page(),
    );
  }
}

class Family_Page extends StatelessWidget {
  // list of pictures
  final family = [
    "assets/imaes/family_members/family_grandfather.png"
        "assets/imaes/family_members/family_grandmother.png"
        "assets/imaes/family_members/family_father.png"
        "assets/imaes/family_members/family_mother.png"
        "assets/imaes/family_members/family_daughter.png"
        "assets/imaes/family_members/family_older_brother.png"
        "assets/imaes/family_members/family_older_sister.png"
        "assets/imaes/family_members/family_younger_brother.png"
        "assets/imaes/family_members/family_younger_sister.png"
        "assets/imaes/family_members/family_son.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
