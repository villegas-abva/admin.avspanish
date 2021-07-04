import 'package:av_spanish/pages/quiz/add_quiz/add_quiz_cr_page.dart';
import 'package:av_spanish/pages/quiz/add_quiz/add_quiz_mc_page.dart';
import 'package:av_spanish/pages/quiz/add_quiz/add_quiz_tf_page.dart';
import 'package:av_spanish/widgets/nav_bar/bot_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int selectedIndex = 0;
PageController pageController = PageController(
  initialPage: 0,
);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(42)),
          ),
          backgroundColor: Colors.black,
          title: Text(
            'AV Spanish Admin',
            style: GoogleFonts.mcLaren(),
          ),
        ),
        body: Column(
          children: [
            // Custom App Bar
            BotNavBarWidget(
              selectedIndex: selectedIndex,
              onChanged: onChanged,
            ),
            //Other Pages
            Expanded(
              child: PageView(
                onPageChanged: (newPage) {
                  setState(() {
                    selectedIndex = newPage;
                  });
                },
                children: [
                  AddQuizTFPage(),
                  AddQuizMCPage(),
                  AddQuizCRPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onChanged(int index) {
    pageController.jumpToPage(index);
    setState(() {
      selectedIndex = index;
    });
  }
}
