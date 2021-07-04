import 'package:av_spanish/widgets/quiz/add/containers/add_question_mc_container.dart';
import 'package:av_spanish/widgets/quiz/add/text_form_field/add_url_textform_field.dart';
import 'package:flutter/material.dart';

class AddQuizMCPage extends StatelessWidget {
  const AddQuizMCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: [
            AddUrlTextFormField(hint: 'Video url'),
            AddQuestionMCContainer(
              questionNumber: 'Question #1',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #2',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #3',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #4',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #5',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #6',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #7',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #8',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #9',
            ),
            AddQuestionMCContainer(
              questionNumber: 'Question #10',
            ),
          ],
        ),
      ),
    );
  }
}
