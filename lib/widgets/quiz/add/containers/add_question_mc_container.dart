// import 'package:av_spanish/shared/constants/constants.dart';
// import 'package:av_spanish/widgets/quiz/add/text_form_field/add_option_textform_field.dart';
// import 'package:av_spanish/widgets/quiz/add/text_form_field/add_question_answer_textform_field.dart';
// import 'package:av_spanish/widgets/quiz/add/text_form_field/add_time_textform_field.dart';
// import 'package:flutter/material.dart';

// class AddQuestionMCContainer extends StatefulWidget {
//   final String questionNumber;
//   const AddQuestionMCContainer({Key? key, required this.questionNumber})
//       : super(key: key);

//   @override
//   _AddQuestionMCContainerState createState() => _AddQuestionMCContainerState();
// }

// class _AddQuestionMCContainerState extends State<AddQuestionMCContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(6),
//       decoration: BoxDecoration(
//         border: Border.all(width: 2),
//         borderRadius: BorderRadius.circular(40),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(16, 8, 8, 2),
//         child: Column(
//           children: [
//             //Question Number
//             Text(
//               widget.questionNumber,
//               style: Constants.kHeaderText.copyWith(color: Colors.amber[600]),
//             ),
//             Column(
//               children: [
//                 //Question TextForm
//                 AddQuestionAnswerTextFormField(hint: 'Question'),
//                 AddOptionTextFormField(hint: 'Option A'),
//                 AddOptionTextFormField(hint: 'Option B'),
//                 AddOptionTextFormField(hint: 'Option C'),
//                 AddOptionTextFormField(hint: 'Option D'),
//                 AddQuestionAnswerTextFormField(hint: 'Answer'),
//                 AddTimeTextFormField(hint: 'Start Time'),
//                 AddTimeTextFormField(hint: 'End Time'),

//                 //Options (V/F) Forms
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
