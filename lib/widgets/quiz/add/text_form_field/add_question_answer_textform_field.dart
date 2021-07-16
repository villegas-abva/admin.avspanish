import 'package:av_spanish/services/quiz_functions.dart';
import 'package:av_spanish/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddQuestionAnswerTextFormField extends StatelessWidget {
  AddQuestionAnswerTextFormField({
    Key? key,
    required this.hint,
    required this.id,
  }) : super(key: key);

  final String hint;

  final String id;

  QuizFunctions _quizFunction = QuizFunctions();

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _quizFunction = Provider.of<QuizFunctions>(context, listen: false);
    return TextFormField(
      onChanged: (value) {
        if (id == Constants.kIdListQuestionAnswer[0]) {
          _quizFunction.question = controller.text;
        } else {
          _quizFunction.answer = controller.text;
        }
      },
      controller: controller,
      style: Constants.kRegularText
          .copyWith(color: Colors.black87, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Constants.kRegularText,
        border: InputBorder.none,
      ),
    );
  }
}
