import 'package:flutter/material.dart';

class OneLayer extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Single TextFormField')),
      body: Column(
        children: [
          TextFormField(
            controller: controller,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(controller.text);
          controller.clear();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
