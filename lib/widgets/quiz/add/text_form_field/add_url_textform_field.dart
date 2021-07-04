import 'package:av_spanish/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class AddUrlTextFormField extends StatelessWidget {
  final String hint;
  const AddUrlTextFormField({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.blue.shade800),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 8, 2),
        child: TextFormField(
          style: Constants.kRegularText.copyWith(
              color: Colors.blue.shade800, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle:
                Constants.kRegularText.copyWith(color: Colors.blue.shade800),
          ),
        ),
      ),
    );
  }
}
