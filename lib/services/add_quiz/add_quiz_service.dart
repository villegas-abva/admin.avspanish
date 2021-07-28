import 'package:av_spanish/shared/constants/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddQuizService {
  /// Adds True False Question to Firebase. Takes [String title, url, question, answer, startTime, endTime].
  /// Returns a bool = true if write is successful.
  Future<bool> addTFQuestion(
      {required String questionNumber,
      required String show,
      required String title,
      required String url,
      required String question,
      required String answer,
      required String startTime,
      required String endTime}) async {
    CollectionReference _ref = FirebaseFirestore.instance
        .collection(Constants.kQuizReference)
        .doc(Constants.kTFReference)
        .collection(show)
        .doc(title)
        .collection(Constants.kQuestionsReference);

    //return true if successful
    try {
      await _ref.doc('question $questionNumber').set({
        'question': question,
        'answer': answer,
        'time Start': startTime,
        'time End': endTime
      });
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  /// Adds Multiple Choice Quiz to Firebase. Takes [title, url, question, answer, startTime, endTime]
  /// Returns a bool = true if write is successful.
  Future<bool> addMCQuestion(
      {required String questionNumber,
      required String show,
      required String title,
      required String url,
      required String question,
      required String answer,
      required String optionA,
      required String optionB,
      required String optionC,
      required String optionD,
      required String startTime,
      required String endTime}) async {
    CollectionReference _ref = FirebaseFirestore.instance
        .collection(Constants.kQuizReference)
        .doc(Constants.kMCReference)
        .collection(show)
        .doc(title)
        .collection(Constants.kQuestionsReference);

    //return true if successful
    try {
      await _ref.doc('question $questionNumber').set({
        'question': question,
        'answer': answer,
        'option a': optionA,
        'option b': optionB,
        'option c': optionC,
        'option d': optionD,
        'time Start': startTime,
        'time End': endTime
      });
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  /// Adds Compare Answers Quiz to Firebase. Takes [title, url, question, answer, startTime, endTime]
  /// Returns a bool = true if write is successful.
  Future<bool> addCRQuestion(
      {required String questionNumber,
      required String show,
      required String title,
      required String url,
      required String question,
      required String answer,
      required String startTime,
      required String endTime}) async {
    CollectionReference _ref = FirebaseFirestore.instance
        .collection(Constants.kQuizReference)
        .doc(Constants.kCRReference)
        .collection(show)
        .doc(title)
        .collection(Constants.kQuestionsReference);

    //return true if successful
    try {
      await _ref.doc('question $questionNumber').set({
        'question': question,
        'answer': answer,
        'time Start': startTime,
        'time End': endTime
      });
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
