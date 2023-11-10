// ignore_for_file: sized_box_for_whitespace, must_be_immutable, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_model.dart';
import 'package:quiz_app/widgets/quiz_screen_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late double result = 0;
  late double finalResult = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return QuizScreenWidget(
            questionNumber: '${index + 1}',
            controllerNumber: index + 1,
            question: questions.elementAt(index),
            answersList: answersToQuestions.values.elementAt(index).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentAnswers.isEmpty) {
            result = 0;
            finalResult = result;
            print('No Answers');
            Navigator.pushNamed(context, 'ResultScreen',
                arguments: finalResult);
          } else {
            for (int i = 0; i < questions.length; i++) {
              if (rightAnswers.values.elementAt(i) ==
                  currentAnswers.values.elementAt(i)) {
                result = result + 1;
                print('$i = true');
              }
              if (rightAnswers.values.elementAt(i) !=
                  currentAnswers.values.elementAt(i)) {
                print('$i = false');
              } else {
                print('$i = false');
                // result += 10;
              }
              finalResult = result / rightAnswers.length * 100;

              print(finalResult);
            }

            Navigator.pushNamedAndRemoveUntil(
                context, 'ResultScreen', (route) => false,
                arguments: finalResult);
            setState(() {
              currentAnswers.clear();
              for (int t = 1; t <= questions.length; t++) {
                currentAnswers[t] = '';
              }
            });
          }
        },
        child: Text('Submit'),
      ),
    );
  }
}
