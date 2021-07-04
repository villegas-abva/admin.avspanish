import 'package:flutter/material.dart';

class CategorySwipe extends ChangeNotifier {
  bool onCategoryPress(bool selected) {
    bool isSelected = !selected;

    setState() {
      isSelected = !isSelected;
    }

    print(isSelected);

    return isSelected;
  }
}
