import 'package:av_spanish/services/category_swipe.dart';
import 'package:av_spanish/widgets/quiz/add/containers/add_question_tf_cr_container.dart';
import 'package:av_spanish/widgets/quiz/add/text_form_field/add_url_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategorySwipe>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Write Test'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(children: [
                AddQuestionTFCRContainer(questionNumber: 'Question 1'),
                AddQuestionTFCRContainer(questionNumber: 'Question 2'),
              ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      );
    });
  }
}
