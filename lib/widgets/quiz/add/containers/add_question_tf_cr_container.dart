import 'package:av_spanish/shared/constants/constants.dart';
import 'package:av_spanish/widgets/quiz/add/text_form_field/add_question_answer_textform_field.dart';
import 'package:av_spanish/widgets/quiz/add/text_form_field/add_time_textform_field.dart';
import 'package:flutter/material.dart';

class AddQuestionTFCRContainer extends StatefulWidget {
  final String questionNumber;
  const AddQuestionTFCRContainer({Key? key, required this.questionNumber})
      : super(key: key);

  @override
  _AddQuestionTFCRContainerState createState() =>
      _AddQuestionTFCRContainerState();
}

class _AddQuestionTFCRContainerState extends State<AddQuestionTFCRContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 8, 2),
        child: Column(
          children: [
            //Question Number
            Text(
              widget.questionNumber,
              style: Constants.kHeaderText.copyWith(color: Colors.amber[600]),
            ),
            Column(
              children: [
                //Question TextForm
                AddQuestionAnswerTextFormField(hint: 'Question'),
                AddQuestionAnswerTextFormField(hint: 'Answer'),
                AddTimeTextFormField(hint: 'Start Time'),
                AddTimeTextFormField(hint: 'End Time'),

                //Options (V/F) Forms
              ],
            ),
          ],
        ),
      ),
    );
  }
}
