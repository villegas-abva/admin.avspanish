import 'package:av_spanish/shared/constants/constants.dart';
import 'package:av_spanish/widgets/quiz/add/text_form_field/add_question_answer_textform_field.dart';
import 'package:av_spanish/widgets/quiz/add/text_form_field/add_time_textform_field.dart';
import 'package:flutter/material.dart';

class AddQuestionTFCRContainer extends StatelessWidget {
  final String questionNumber;
  const AddQuestionTFCRContainer({Key? key, required this.questionNumber})
      : super(key: key);

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
              questionNumber,
              style: Constants.kHeaderText.copyWith(color: Colors.amber[600]),
            ),
            Column(
              children: [
                //Question TextForm
                AddQuestionAnswerTextFormField(
                    hint: 'Question', id: Constants.kIdListQuestionAnswer[0]),
                AddQuestionAnswerTextFormField(
                    hint: 'Answer', id: Constants.kIdListQuestionAnswer[1]),
                AddTimeTextFormField(
                    hint: 'Start Time', id: Constants.kIdListTime[0]),
                AddTimeTextFormField(
                  hint: 'End Time',
                  id: Constants.kIdListTime[1],
                ),
                //Options (V/F) Forms
              ],
            ),
          ],
        ),
      ),
    );
  }
}
