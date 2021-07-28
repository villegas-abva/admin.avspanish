import 'package:av_spanish/services/add_quiz/add_quiz_service.dart';
import 'package:av_spanish/shared/constants/constants.dart';
import 'package:av_spanish/shared/helpers/validation/input_validation.dart';
import 'package:av_spanish/shared/widgets/animated_text_widget.dart';
import 'package:av_spanish/shared/widgets/nav_bar/snackbar.dart';
import 'package:av_spanish/shared/widgets/quiz/add/text_form_field/add_question_answer_textform_field.dart';
import 'package:av_spanish/shared/widgets/quiz/add/text_form_field/add_time_textform_field.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class AddQuizMCScreen extends StatefulWidget with InputValidationMixin {
  AddQuizMCScreen({
    Key? key,
  }) : super(key: key);
  // Strings
  static const primColor = const Color(0xaaad3DFF);

  @override
  _AddQuizMCScreenState createState() => _AddQuizMCScreenState();
}

class _AddQuizMCScreenState extends State<AddQuizMCScreen> {
  // Question number index and Question number list
  List<int> questionList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int questionIndex = 0;

  // String
  String show = '';
  String title = '';
  String url = '';
  String question = '';
  String answer = '';
  String optionA = '';
  String optionB = '';
  String optionC = '';
  String optionD = '';
  String startTime = '';
  String endTime = '';

  // TextControllers
  TextEditingController _controllerShow = TextEditingController();
  TextEditingController _controllerTitle = TextEditingController();
  TextEditingController _controllerUrl = TextEditingController();
  TextEditingController _controllerQuestion = TextEditingController();
  TextEditingController _controllerAnswer = TextEditingController();
  TextEditingController _controllerOptionA = TextEditingController();
  TextEditingController _controllerOptionB = TextEditingController();
  TextEditingController _controllerOptionC = TextEditingController();
  TextEditingController _controllerOptionD = TextEditingController();

  TextEditingController _controllerStartTime = TextEditingController();
  TextEditingController _controllerEndTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AddQuizMCScreen.primColor,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              // QuestionNumber
              Text(
                questionIndex == 10
                    ? 'Done!'
                    : 'Question# ${questionList[questionIndex]}',
                textAlign: TextAlign.center,
                style: Constants.kHeaderText
                    .copyWith(color: Colors.white, fontSize: 35),
              ),
              // Texts
              AnimatedTextWidget(
                text: 'Texts',
                isTypeWriterAnimation: true,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Show',
                controller: _controllerShow,
                maxLines: 1,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Title',
                controller: _controllerTitle,
                maxLines: 1,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Url',
                controller: _controllerUrl,
                maxLines: 1,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Question',
                controller: _controllerQuestion,
                maxLines: 2,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Answer',
                controller: _controllerAnswer,
                maxLines: 1,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Option A',
                controller: _controllerOptionA,
                maxLines: 1,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Option B',
                controller: _controllerOptionB,
                maxLines: 1,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Option C',
                controller: _controllerOptionC,
                maxLines: 1,
              ),
              AddQuestionAnswerTextFormField(
                labelText: 'Option D',
                controller: _controllerOptionD,
                maxLines: 1,
              ),
              // Times
              AnimatedTextWidget(
                text: 'Times',
                isTypeWriterAnimation: false,
              ),
              AddTimeTextFormField(
                labelText: 'Start Time',
                controller: _controllerStartTime,
              ),
              AddTimeTextFormField(
                labelText: 'End Time',
                controller: _controllerEndTime,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white.withOpacity(0.7),
          child: Icon(
            Icons.add,
            color: AddQuizMCScreen.primColor,
          ),
          onPressed: () async {
            // validate form
            if (_formKey.currentState!.validate()) {
              // Asign contollers' values to texts
              show = _controllerShow.text;
              title = _controllerTitle.text;
              url = _controllerUrl.text;
              question = _controllerQuestion.text;
              answer = _controllerAnswer.text;
              optionA = _controllerOptionA.text;
              optionB = _controllerOptionB.text;
              optionC = _controllerOptionC.text;
              optionD = _controllerOptionD.text;
              startTime = _controllerStartTime.text;
              endTime = _controllerEndTime.text;
              //-------------if question == 1-9 [Index = 0-8]:
              // addQuestion, show Snackbar, increase Index, newQuestion()-------------------------
              if (questionIndex < 9) {
                // Add Question to Firestore
                bool questionWasAdded = await AddQuizService().addMCQuestion(
                    questionNumber: questionList[questionIndex].toString(),
                    show: show,
                    title: title,
                    url: url,
                    question: question,
                    answer: answer,
                    optionA: optionA,
                    optionB: optionB,
                    optionC: optionC,
                    optionD: optionD,
                    startTime: startTime,
                    endTime: endTime);

                if (questionWasAdded) {
                  // SnackBar
                  displaySnackbar(
                      context,
                      'Question ${questionList[questionIndex].toString()} added!',
                      Colors.green);

                  // Increase Index
                  setState(() {
                    questionIndex++;
                  });
                  // newQuestion: clear relevant controller fields
                  newQuestion();
                } else {
                  print('error adding question!');
                  displaySnackbar(
                      context, 'Error adding question!', Colors.red);
                  newQuiz();
                  setState(() {
                    questionIndex = 0;
                  });
                }
              } else {
                //----------if question 10[i == 9]: // addQuestion, show Snackbar, newQuestion()----------------

                // Add Question to Firestore
                bool questionWasAdded = await AddQuizService().addMCQuestion(
                    questionNumber: questionList[questionIndex].toString(),
                    show: show,
                    title: title,
                    url: url,
                    question: question,
                    answer: answer,
                    optionA: optionA,
                    optionB: optionB,
                    optionC: optionC,
                    optionD: optionD,
                    startTime: startTime,
                    endTime: endTime);

                if (questionWasAdded) {
                  // SnackBar
                  displaySnackbar(
                      context,
                      'Question ${questionList[questionIndex].toString()} added!',
                      Colors.green);
                } else {
                  print('error adding question!');
                  displaySnackbar(
                      context, 'Error adding question!', Colors.red);
                }
                // newQuiz: clear relevant controller fields
                newQuiz();
                setState(() {
                  questionIndex = 0;
                });
              }
            }
          }),
    );
  }

// reset fields for new question [question, answer, startTime, endTime]
  void newQuestion() {
    _controllerQuestion.clear();
    _controllerAnswer.clear();
    _controllerOptionA.clear();
    _controllerOptionB.clear();
    _controllerOptionC.clear();
    _controllerOptionD.clear();
    _controllerStartTime.clear();
    _controllerEndTime.clear();
  }

  // rest all fields [show, title, url, question, answer, startTime, endTime]
  void newQuiz() {
    _controllerShow.clear();
    _controllerTitle.clear();
    _controllerUrl.clear();
    _controllerQuestion.clear();
    _controllerAnswer.clear();
    _controllerOptionA.clear();
    _controllerOptionB.clear();
    _controllerOptionC.clear();
    _controllerOptionD.clear();
    _controllerStartTime.clear();
    _controllerEndTime.clear();
  }
}
