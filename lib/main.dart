import 'package:av_spanish/pages/home/home_page.dart';
import 'package:av_spanish/services/quiz_functions.dart';
import 'package:av_spanish/two_layers.dart';
import 'package:av_spanish/one_layer.dart';
import 'package:av_spanish/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuizFunctions(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AV Spanish Admin',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: TwoLayers(),
        // home: OneLayer(),
        // home: Test(),
        home: HomePage(),
      ),
    );
  }
}
