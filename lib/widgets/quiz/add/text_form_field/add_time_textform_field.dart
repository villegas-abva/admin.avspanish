import 'package:av_spanish/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class AddTimeTextFormField extends StatelessWidget {
  final String hint;
  const AddTimeTextFormField({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
