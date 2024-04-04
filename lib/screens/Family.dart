import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class family extends StatelessWidget {
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
    
        "assets/imaes/family/familygrandfather.png" ,
        "assets/imaes/family/familygrandmother.png" ,
        "assets/imaes/family/familyfather.png" ,
        "assets/imaes/family/familymother.png" ,
        "assets/imaes/family/familydaughter.png" , 
        "assets/imaes/family/familyolderbrother.png" , 
        "assets/imaes/family/familyoldersister.png" ,
        "assets/imaes/family/familyyoungerbrother.png" ,
        "assets/imaes/family/familyyoungersister.png" ,
        "assets/imaes/family/familyson.png" ,
        
 
  ];

  final title = [
    "Sofu",
    "Sobo",
    "Chichioya",
    "Hahaoya",
    "Musume",
    "Ōrudoburazā",
    "Ane",
    "Otōto",
    "Imōto",
    "Musuko"
  ];

  final subTitle = [
    "GrandFather",
    "Grandmother",
    "Father",
    "Mother",
    "Daughter",
    "Old_Brather",
    "Old_Sister",
    "Young_Brother",
    "Young_Sister",
    "Son"
  ];

  final music = [
        "sounds/numbers/number_one_sound.mp3" , 
  "sounds/numbers/number_two_sound.mp3" , 
  "sounds/numbers/number_three_sound.mp3" , 
  "sounds/numbers/number_four_sound.mp3" , 
  "sounds/numbers/number_five_sound.mp3" , 
  "sounds/numbers/number_six_sound.mp3" , 
  "sounds/numbers/number_seven_sound.mp3" , 
  "sounds/numbers/number_eight_sound.mp3" , 
  "sounds/numbers/number_nine_sound.mp3" , 
  "sounds/numbers/number_ten_sound.mp3" ,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family"),
        backgroundColor: Color(0xFF00ff00),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context, i) {
            return Card(
              color: Color.fromARGB(255, 241, 235, 172),
              elevation: 25,
              child: ListTile(
                splashColor: Colors.orange,
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(title[i]),
                ),
                subtitle: Text(subTitle[i]),
                leading: Image.asset(family[i], fit: BoxFit.fill),
                trailing: IconButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource(music[i]));
                    },
                    icon: Icon(
                      Icons.play_circle_fill,
                      color: Colors.black,
                    )),
                isThreeLine: true,
                titleTextStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                subtitleTextStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            );
          }),
    );
  }
}
