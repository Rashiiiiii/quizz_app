import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
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
                          style: const TextStyle(
                          color: Colors.white
                        ),
                          textAlign: TextAlign.center,
                        ),
                       // currentQuestion.answers.map((item) {
                         // return An
                        //}),
                        const SizedBox(height: 30),
                        AnswerButton(
                          answerText :currentQuestion.answers[0],
                            onTap: () {},
                        ),
                        AnswerButton(
                          answerText : currentQuestion.answers[1],
                          onTap: () {},
                        ),
                        AnswerButton(
                          answerText : currentQuestion.answers[2],
                          onTap: () {},
                        ),
                        AnswerButton(
                          answerText : currentQuestion.answers[3],
                          onTap: () {},
                        ),

                      ],
                    ),
                  ),
                ),
            ),
            ),


    );


  }
}
