import 'package:av_spanish/pages/home/home_page.dart';
import 'package:av_spanish/services/category_swipe.dart';
import 'package:av_spanish/write_test.dart';
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
      create: (context) => CategorySwipe(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AV Spanish Admin',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
