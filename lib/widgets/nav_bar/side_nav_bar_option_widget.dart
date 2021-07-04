import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideNavBarOptionWidget extends StatelessWidget {
  final Color color;
  final String text;
  final GestureTapCallback onPress;

  const SideNavBarOptionWidget(
      {required this.onPress,
      required this.text,
      required this.color,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.10,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black, width: 7),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.mcLaren(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
