import 'package:av_spanish/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class AddQuestionAnswerTextFormField extends StatelessWidget {
  final String hint;
  const AddQuestionAnswerTextFormField({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
