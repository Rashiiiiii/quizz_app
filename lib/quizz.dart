import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/results_screen.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/data/questions.dart';


class Quizz extends StatefulWidget{
  const Quizz({super.key});
  @override
  State<Quizz> createState(){
    return _QuizzState();
  }
  }

int score=0;
class _QuizzState extends State<Quizz>{

  Widget? activeScreen;
  List<String> selectedAnswers=[];
  @override
  void scoreUpdate(){
    score++;
  }
  void scoreReset(){
    selectedAnswers=[];
    score = 0;
  }
  void initState(){
    activeScreen=StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen= QuestionsScreen(onSelectAnswer:chooseAnswer ,scoreTrack: scoreUpdate,);
    });
  }
  void chooseAnswer (String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        selectedAnswers=[];
        activeScreen = ResultsScreen(chosenAnswers: selectedAnswers,scores: score , resetScore:scoreReset ,);

      });
    }
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