import 'package:av_spanish/services/quiz_functions.dart';
import 'package:av_spanish/widgets/quiz/add/containers/add_question_mc_container.dart';
import 'package:av_spanish/widgets/quiz/add/containers/add_question_tf_cr_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

class ListTest extends StatelessWidget {
  List<String> questionNumber = [
    'Question 1',
    // 'Question 2',
    // 'Question 3 ',
    // 'Question 4',
    // 'Question 5',
    // 'Question 6',
    // 'Question 7',
    // 'Question 8',
    // 'Question 9',
    // 'Question 10'
  ];
  ListTest({Key? key}) : super(key: key);

  QuizFunctions _quizFunctions = QuizFunctions();

  @override
  Widget build(BuildContext context) {
    _quizFunctions = Provider.of<QuizFunctions>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text('List Test'),
      ),
      body: ListView.builder(
        itemCount: questionNumber.length,
        itemBuilder: (BuildContext context, int index) {
          return AddQuestionTFCRContainer(
              questionNumber: questionNumber[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _quizFunctions.addQuestionFields(
                question: _quizFunctions.question!,
                answer: _quizFunctions.answer!,
                startTime: _quizFunctions.startTime!,
                endTime: _quizFunctions.endTime!);
            print('Esta es la pregunta1: ${_quizFunctions.question}');
            print(
                ' Estas son todas las preguntas ${_quizFunctions.questionList}');
            print(' ');
            print('Esta es la respuesta 1: ${_quizFunctions.answer}');
            print(
                ' Estas son todas las respuestas ${_quizFunctions.answerList}');

            // print('Esta es la respuesta1: ${_quizFunctions.answers}');1
            // print('Esta es el start time: ${_quizFunctions.startTimes}');
            // print('Esta es el end time: ${_quizFunctions.endTimes}');
          }),
    );
  }
}
