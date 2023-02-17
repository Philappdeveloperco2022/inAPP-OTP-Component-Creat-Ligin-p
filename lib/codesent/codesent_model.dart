import '../components/code_sent_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CodesentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for CodeSent component.
  late CodeSentModel codeSentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    codeSentModel = createModel(context, () => CodeSentModel());
  }

  void dispose() {
    codeSentModel.dispose();
  }

  /// Additional helper methods are added here.

}
