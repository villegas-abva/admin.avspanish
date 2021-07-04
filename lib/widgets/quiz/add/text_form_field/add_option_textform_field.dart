import 'package:av_spanish/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class AddOptionTextFormField extends StatelessWidget {
  final String hint;
  const AddOptionTextFormField({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Constants.kRegularText
          .copyWith(color: Colors.green.shade800, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Constants.kRegularText.copyWith(
          color: Colors.green.shade800,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
