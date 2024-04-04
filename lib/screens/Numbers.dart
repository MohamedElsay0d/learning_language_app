// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart' ;

class numbers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: number_Page() ,
    );
  }
}
class number_Page extends StatelessWidget {
  final number = [
  "assets/imaes/numbers/number_one.png" , 
  "assets/imaes/numbers/number_two.png" , 
  "assets/imaes/numbers/number_three.png" , 
  "assets/imaes/numbers/number_four.png" , 
  "assets/imaes/numbers/number_five.png" , 
  "assets/imaes/numbers/number_six.png" , 
  "assets/imaes/numbers/number_seven.png" , 
  "assets/imaes/numbers/number_eight.png" , 
  "assets/imaes/numbers/number_nine.png" , 
  "assets/imaes/numbers/number_ten.png" , 
] ;
final title_list = [
  "Ichi" , "Ni" , "San" , "Shi" , "Go" ,
  "Roku" , "Sebun" , "Hachi" , "kyū/ku" , "jū"  
] ;
final subtitle_list = [
  "One" , "Two" , "Three" , "Four" , "Five" ,
  "Six" , "Seven" , "Eight" , "Nine" , "Ten" 
] ;
List sound = [
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
] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Color(0xFF46322B),
          title: Text("Numbers"),
        ),
        body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context , i){
              return Card( color: Color.fromARGB(255, 241, 235, 172),
                elevation: 25,
                child: ListTile( splashColor: Colors.orange,
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical:10),
                    child: Text(title_list[i]),
                  ),
                  subtitle: Text(subtitle_list[i]),
                  leading: Image.asset(number[i] , fit: BoxFit.fill,),
                  trailing: IconButton(
                    onPressed: (){
                        final player = AudioPlayer() ;
                        player.play(AssetSource(sound[i])) ;
                  }, 
                  icon: Icon(Icons.play_circle_fill , color: Colors.black,)
                  ),
                  isThreeLine: true,
                  titleTextStyle: TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.bold ,
                    color: Colors.black
                  ),
                  subtitleTextStyle:TextStyle(
                    fontSize: 17 ,
                    fontWeight: FontWeight.bold ,
                    color: Colors.black
                  ),
                ),
              ) ;
          }),
        
      );
  }
}

