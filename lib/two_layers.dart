import 'package:av_spanish/my_text_form_field.dart';
import 'package:flutter/material.dart';

class TwoLayers extends StatelessWidget {
  TwoLayers({Key? key}) : super(key: key);
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is with 2 layers'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black)),
            child: Column(
              children: [
                MyTextFormField(controller: controller1),
                MyTextFormField(controller: controller2),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('controller 1 text: ${controller1.text}');
          print('controller 2 text: ${controller2.text}');
          controller1.clear();
          controller2.clear();
        },
      ),
    );
  }
}
