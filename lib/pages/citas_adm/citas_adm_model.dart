import '/flutter_flow/flutter_flow_util.dart';
import 'citas_adm_widget.dart' show CitasAdmWidget;
import 'package:flutter/material.dart';

class CitasAdmModel extends FlutterFlowModel<CitasAdmWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
