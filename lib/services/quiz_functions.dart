import 'package:av_spanish/shared/constants/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class QuizFunctions extends ChangeNotifier {
  // Document References
  final DocumentReference tfDocRefFinal = FirebaseFirestore.instance
      .collection(Database.kQuizzes)
      .doc()
      .collection(Database.kTFQuiz)
      .doc();

  void addQuiz(String question1, answer1, startTime1, endTime1, question2,
      answer2, startTime2, endTime2) {
    tfDocRefFinal.collection('question1').add({
      'question': question1,
      'answer': answer1,
      'start time': startTime1,
      'end time': endTime1
    });
    tfDocRefFinal.collection('question2').add({
      'question': question2,
      'answer': answer2,
      'start time': startTime2,
      'end time': endTime2
    });
    // tfDocRefFinal.collection('Bob Esponja').doc().collection('question2').add({
    //   'question': question2,
    //   'answer': answer2,
    //   'start time': startTime2,
    //   'end time': endTime2
    // });
  }

  bool onCategoryPress(bool selected) {
    bool isSelected = !selected;

    print(isSelected);

    return isSelected;
  }
}
