import '/components/input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:mobile_keyboard_expandable/custom_code/expandable_controller_manager.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> sampleData = ['Spouse', 'Son', 'Daughter'];
  void addToSampleData(String item) => sampleData.add(item);
  void removeFromSampleData(String item) => sampleData.remove(item);
  void removeAtIndexFromSampleData(int index) => sampleData.removeAt(index);
  void insertAtIndexInSampleData(int index, String item) =>
      sampleData.insert(index, item);
  void updateSampleDataAtIndex(int index, Function(String) updateFn) =>
      sampleData[index] = updateFn(sampleData[index]);

  ExpandableControllerManager? expandableControllerInstance;

  ///  State fields for stateful widgets in this page.

  // Models for Input dynamic component.
  late FlutterFlowDynamicModels<InputModel> inputModels;

  @override
  void initState(BuildContext context) {
    inputModels = FlutterFlowDynamicModels(() => InputModel());
  }

  @override
  void dispose() {
    inputModels.dispose();
  }
}
