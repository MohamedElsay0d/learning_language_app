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

  final title = [
    "Sofu" , "Sobo" , 
    "Chichioya" , "Hahaoya" , 
    "Musume" , "Ōrudoburazā" , 
    "Ane" , "Otōto" , "Imōto" , "Musuko"
  ];

  final subTitle = [
    "GrandFather" , "Grandmother" , 
    "Father" , "Mother" , 
    "Daughter" , "Old_Brather" , 
    "Old_Sister" , "Young_Brother" , "Young_Sister" , "Son"
  ];
  
  final music = [
    "assets/sounds/family_members/grand father.wav"
    "assets/sounds/family_members/grand mother.wav"
    "assets/sounds/family_members/father.wav"
    "assets/sounds/family_members/mother.wav"
    "assets/sounds/family_members/daughter.wav"
    "assets/sounds/family_members/older bother.wav"
    "assets/sounds/family_members/older sister.wav"
    "assets/sounds/family_members/younger brohter.wav"
    "assets/sounds/family_members/younger sister.wav"
    "assets/sounds/family_members/son.wav"
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
