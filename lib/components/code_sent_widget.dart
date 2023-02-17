import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'code_sent_model.dart';
export 'code_sent_model.dart';

class CodeSentWidget extends StatefulWidget {
  const CodeSentWidget({Key? key}) : super(key: key);

  @override
  _CodeSentWidgetState createState() => _CodeSentWidgetState();
}

class _CodeSentWidgetState extends State<CodeSentWidget> {
  late CodeSentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodeSentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(),
    );
  }
}
