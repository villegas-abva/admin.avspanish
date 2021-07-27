import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedTextWidget extends StatefulWidget {
  AnimatedTextWidget({
    Key? key,
    required this.text,
    required this.isTypeWriterAnimation,
  }) : super(key: key);

  final String text;
  final bool isTypeWriterAnimation;
  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}



class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          widget.isTypeWriterAnimation
              ? TypewriterAnimatedText(
                  widget.text,
                  textStyle: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 300),
                )
              : WavyAnimatedText(
                  widget.text,
                  textStyle: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 300),
                ),
        ],
        repeatForever: true,
        // totalRepeatCount: 5,
        pause: const Duration(milliseconds: 100),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      ),
    );
  }
}
