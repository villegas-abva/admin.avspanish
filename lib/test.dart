import 'package:av_spanish/services/quiz_functions.dart';
import 'package:av_spanish/widgets/quiz/add/containers/add_question_tf_cr_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuizFunctions>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Write Test'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(children: [
                AddQuestionTFCRContainer(questionNumber: 'Question 1'),
                AddQuestionTFCRContainer(questionNumber: 'Question 2'),
              ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              provider.addQuiz('question1', 'answer1', ' startTime1',
                  'endTime1', 'question2', 'answer2', 'startTime2', 'endTime2');
            }),
      );
    });
  }
}
