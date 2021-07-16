import 'package:av_spanish/widgets/quiz/add/containers/add_question_mc_container.dart';
import 'package:av_spanish/widgets/quiz/add/containers/add_question_tf_cr_container.dart';
import 'package:flutter/material.dart';

class ListTest extends StatelessWidget {
  List<String> questionNumber = [
    '1',
    // '2',
    // '3 ',
    // '4',
    // '5',
    // '6',
    // '7',
    // '8',
    // '9',
    // '10'
  ];
  ListTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          print('Quiz added!');
        },
      ),
    );
  }
}
