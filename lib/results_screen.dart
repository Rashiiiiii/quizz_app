import 'package:flutter/material.dart';
import 'package:quizz_app/quizz.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen ({super.key, required this.chosenAnswers,required this.scores,required this.resetScore});
  final List<String> chosenAnswers;
  final int scores;
  final void Function() resetScore;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
        margin: EdgeInsets.all(40),
    child: Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: [
       Text('Your Score is: $scores', style: TextStyle(
         color: Colors.white,
         fontSize: 24,
         fontWeight: FontWeight.bold,
       ),),
        SizedBox(height: 15),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Quizz(),));
        }, child: Text('Restart Quiz'),
        )
      ],

    ),
    ),
    );
  }
}
