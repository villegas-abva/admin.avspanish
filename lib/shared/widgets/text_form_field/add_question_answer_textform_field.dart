import 'package:av_spanish/shared/constants/constants.dart';
import 'package:av_spanish/shared/helpers/validation/input_validation.dart';
import 'package:flutter/material.dart';

class AddTextTextFormField extends StatelessWidget
    with InputValidationMixin {
  AddTextTextFormField(
      {Key? key, required this.labelText, required this.controller, required this.maxLines})
      : super(key: key);

  final String labelText;
 final int maxLines;
  static const compColor = const Color(0xFFFFFFFF);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (isTextValid(value!))
            return null;
          else
            return 'This field is required';
        },
        maxLines: maxLines,
        style: Constants.kRegularText.copyWith(
          color: compColor,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Colors.white, width: 2.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white38,
              width: 1.2,
            ),
          ),
          contentPadding: EdgeInsets.all(30),
          focusColor: Colors.black,
          labelText: labelText,
          labelStyle: Constants.kRegularText.copyWith(color: Colors.white38),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: compColor,
            ),
          ),
        ),
      ),
    );
  }
}
