import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandableControllerManager {
  final List<ExpandableController> controllers;

  // Public constructor
  ExpandableControllerManager(int length)
      : controllers = List.generate(length, (_) => ExpandableController());

  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
  }

  void expandNext(int currentIndex) async {
    if (currentIndex < controllers.length - 1) {
      controllers[currentIndex].expanded = false;
      controllers[currentIndex + 1].expanded = true;

      // Move focus to the next focusable widget (e.g., next TextField)
      await Future.delayed(const Duration(milliseconds: 100));
      FocusScope.of(FocusManager.instance.primaryFocus!.context!).nextFocus();

      print('expandNext: ${controllers[currentIndex + 1].expanded}');
    }
    print('currentIndex: $currentIndex');
  }
}
