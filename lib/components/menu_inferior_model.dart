import '/flutter_flow/flutter_flow_util.dart';
import 'menu_inferior_widget.dart' show MenuInferiorWidget;
import 'package:flutter/material.dart';

class MenuInferiorModel extends FlutterFlowModel<MenuInferiorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'E-mail Inválido';
    }
    return null;
  }

  // State field(s) for assunto widget.
  FocusNode? assuntoFocusNode;
  TextEditingController? assuntoTextController;
  String? Function(BuildContext, String?)? assuntoTextControllerValidator;
  String? _assuntoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nomeTextControllerValidator = _nomeTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    assuntoTextControllerValidator = _assuntoTextControllerValidator;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    assuntoFocusNode?.dispose();
    assuntoTextController?.dispose();
  }
}
