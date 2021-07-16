import 'package:flutter/material.dart';

class Constants {
  static const kRegularText =
      TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300);

  static const kQuestionText =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  static List<String> kIdListQuestionAnswer = ["id_Question", "id_Answer"];
  static List<String> kIdListTime = ["id_StartTime", "id_EndTime"];

  static const kHeaderText =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w700);
}

class ConstantsOptionNames {
  static const kAddQuiz = 'Add Quiz';
  static const kUpdateQuiz = 'Update Quiz';
  static const kDeleteQuiz = 'Delete Quiz';
}

class Database {
  static const kQuizzes = 'Quizzes';
  static const kTFQuiz = 'True False';
  static const kMCQuiz = 'Multiple Choice';
  static const kCAQuiz = 'Compare Answer';
}
