import 'package:av_spanish/services/quiz_functions.dart';
import 'package:av_spanish/shared/constants/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTimeTextFormField extends StatelessWidget {
  AddTimeTextFormField({
    Key? key,
    required this.hint,
    required this.id,
  }) : super(key: key);
  final String hint;
  final String id;
  TextEditingController controller = TextEditingController();

  QuizFunctions _quizFunctions = QuizFunctions();

  @override
  Widget build(BuildContext context) {
    _quizFunctions = Provider.of<QuizFunctions>(context, listen: false);

    return TextFormField(
      onChanged: (value) {
        if (id == Constants.kIdListTime[0]) {
          // _quizFunctions.startTimeList!.add(controller.text);
          _quizFunctions.startTime = controller.text;
        } else {
          // _quizFunctions.endTimeList!.add(controller.text);

          _quizFunctions.endTime = controller.text;
        }
      },
      controller: controller,
      style: Constants.kRegularText
          .copyWith(color: Colors.red.shade800, fontWeight: FontWeight.w400),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Constants.kRegularText.copyWith(
          color: Colors.red,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
