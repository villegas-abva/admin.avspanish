import 'package:flutter/material.dart';

class Constants {
  // CRUD Operations
  static const kQuizReference = 'Quiz';
  static const kTFReference = 'TF';
  static const kMCFReference = 'MC';
  static const kQuestionsReference = 'Questions';

  // Fonts
  static const kRegularText =
      TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300);

  static const kQuestionText =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  static List<String> kIdListQuestionAnswer = ["question", "answer"];
  static List<String> kIdListTime = ["start_time", "end_time"];

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
