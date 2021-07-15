import 'package:av_spanish/shared/constants/constants.dart';
import 'package:flutter/material.dart';

class AddQuizButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPress;
  const AddQuizButton({Key? key, required this.text, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.amber.shade800,
          borderRadius: BorderRadius.circular(50),
        ),
        child: GestureDetector(
          child: Text(
            text,
            style: Constants.kRegularText.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            print('Quiz added');
          },
        ),
      ),
    );
  }
}
