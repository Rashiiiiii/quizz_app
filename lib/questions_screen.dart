import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/models/quizz_questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer, required this.scoreTrack});
  final void Function(String answer) onSelectAnswer;
  final void Function() scoreTrack;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    if(selectedAnswer == questions[currentQuestionIndex].answers[0]){
      widget.scoreTrack();
    }
    setState(() {
      currentQuestionIndex = currentQuestionIndex+1;
    });
  }
  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.purpleAccent],
            ),
          ),
         // child: SingleChildScrollView(
            child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: [
                        Text(currentQuestion.text,
                          style:GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                       const SizedBox(height: 10),
                       ...currentQuestion.getShuffleAnswers().map((item) {
                         return AnswerButton(answerText: item, onTap:(){answerQuestion(item);
                         },
                         );
                        }),
                        const SizedBox(height: 30),


                      ],
                    ),
                  ),
                ),
            ),
            ),


    );


  }
}
