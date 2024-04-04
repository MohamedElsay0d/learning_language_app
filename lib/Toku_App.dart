// ignore_for_file: prefer_const_constructors, file_names, sort_child_properties_last, prefer_const_literals_to_create_immutables, camel_case_types, use_key_in_widget_constructors, unused_import, must_be_immutable

import 'package:flutter/material.dart';
// import 'package:awesome_dialog/awesome_dialog.dart'  ;


class Toku_App extends StatelessWidget {
  final names = [
    'Numbers' , 'Family_Members' , 'Colors' , 'Phrases'
  ] ;
  final backcolor = [
    0xFFFFA500 , 0xFF00ff00 , 0xFF800080 , 0xFF0000ff
  ] ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF46322B),
          title: Text("Toku App"),
        ),
        body: 
            Column(children: [
              GestureDetector(
                child: Category( Color(0xFFFFA500), "Numbers") ,
                onTap: (){
                  Navigator.of(context).pushNamed("Numbers") ;
                },
                ) , 
              Category(Color(0xFF00ff00), "Family_Members") , 
              Category(Color(0xFF800080), "Colors") , 
              Category(Color(0xFF0000ff), "Phrases") , 
            ],)
      ),
    );
  }
}
class Category extends StatelessWidget {
  Color? col  ;
  String? name   ;
Category(this.col , this.name) ;
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              height: 65, 
              width: double.infinity,
              color: col,
              child: Text(name! , 
                    style: TextStyle(color: Colors.black , fontSize: 25 , fontWeight:FontWeight.bold ),),
            ) ;
  }
}