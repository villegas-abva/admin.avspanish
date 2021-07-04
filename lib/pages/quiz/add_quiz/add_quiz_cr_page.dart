import 'package:av_spanish/widgets/quiz/add/text_form_field/add_url_textform_field.dart';
import 'package:av_spanish/widgets/quiz/add/containers/add_question_tf_cr_container.dart';
import 'package:flutter/material.dart';

class AddQuizCRPage extends StatelessWidget {
  const AddQuizCRPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: [
            AddUrlTextFormField(hint: 'Video url'),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #1',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #2',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #3',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #4',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #5',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #6',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #7',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #8',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #9',
            ),
            AddQuestionTFCRContainer(
              questionNumber: 'Question #10',
            ),
          ],
        ),
      ),
    );
  }
}
