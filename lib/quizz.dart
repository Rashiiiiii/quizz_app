import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quizz extends StatefulWidget{
  const Quizz({super.key});
  @override
  State<Quizz> createState(){
    return _QuizzState();
  }
  }


class _QuizzState extends State<Quizz>{
  Widget? activeScreen;
  @override
  void initState(){
    activeScreen=StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen= const QuestionsScreen();
    });
  }
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(gradient: LinearGradient(
              colors:[
                Colors.purple,
                Colors.purpleAccent,
              ] ,
            ),
            ),
            child: activeScreen
        ),
      ),
    );
  }
}