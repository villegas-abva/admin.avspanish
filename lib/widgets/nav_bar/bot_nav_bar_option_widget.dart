import 'package:av_spanish/services/category_swipe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BotNavBarOptionWidget extends StatelessWidget {
  final String text;
  final Color color;
  final int index;
  const BotNavBarOptionWidget({
    required this.color,
    required this.text,
    required this.index,
    Key? key,
  }) : super(key: key);

  final int selectedIndex = 0;
  final bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<CategorySwipe>().onCategoryPress(isSelected),
      // onTap: onPress,
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.10,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black, width: 4),
          color: isSelected ? Colors.white : color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.mcLaren(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
