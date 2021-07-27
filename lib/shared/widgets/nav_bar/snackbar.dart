import 'package:av_spanish/shared/constants/constants.dart';
import 'package:flutter/material.dart';

displaySnackbar(context, String message, Color backgroundColor) {
    final snackBar = ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: Duration(milliseconds: 600),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(message, style: Constants.kRegularText),
              Icon(
                Icons.error,
                color: Theme.of(context).canvasColor,
              ),
            ],
          ),
          backgroundColor: backgroundColor,
        ),
      );
  }