import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen ({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
        margin: EdgeInsets.all(40),
    child: Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: [
       Text('RASHIIIIIIII'),
        SizedBox(height: 15),
        ElevatedButton(onPressed: () {}, child: Text('Restart Quiz'),
        )
      ],

    ),
    ),
    );
  }
}
