import 'package:av_spanish/shared/constants/constants.dart';
import 'package:av_spanish/widgets/nav_bar/bot_nav_bar_option_widget.dart';
import 'package:flutter/material.dart';

class BotNavBarWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int value) onChanged;
  const BotNavBarWidget(
      {Key? key, required this.selectedIndex, required this.onChanged})
      : super(key: key);

  @override
  _BotNavBarWidgetState createState() => _BotNavBarWidgetState();
}

class _BotNavBarWidgetState extends State<BotNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(),
        Container(
          height: MediaQuery.of(context).size.height * 0.12,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              BotNavBarOptionWidget(
                  index: 0,
                  text: ConstantsOptionNames.kAddQuiz,
                  color: Colors.green),
              BotNavBarOptionWidget(
                  index: 1,
                  text: ConstantsOptionNames.kUpdateQuiz,
                  color: Colors.blue),
              BotNavBarOptionWidget(
                  index: 2,
                  text: ConstantsOptionNames.kDeleteQuiz,
                  color: Colors.red),
            ],
          ),
        ),
      ],
    );
  }
}
