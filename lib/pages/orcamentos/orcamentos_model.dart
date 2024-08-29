import '/components/logo_superior_widget.dart';
import '/components/menu_inferior_widget.dart';
import '/componets/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orcamentos_widget.dart' show OrcamentosWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class OrcamentosModel extends FlutterFlowModel<OrcamentosWidget> {
  ///  Local state fields for this page.

  bool? painelACM;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for logoSuperior component.
  late LogoSuperiorModel logoSuperiorModel;
  // Model for menu component.
  late MenuModel menuModel;
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
      return 'e-mail inválido!';
    }
    return null;
  }

  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  final celularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  String? _celularTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for aasunto widget.
  FocusNode? aasuntoFocusNode;
  TextEditingController? aasuntoTextController;
  String? Function(BuildContext, String?)? aasuntoTextControllerValidator;
  String? _aasuntoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Model for menuInferior component.
  late MenuInferiorModel menuInferiorModel;

  @override
  void initState(BuildContext context) {
    logoSuperiorModel = createModel(context, () => LogoSuperiorModel());
    menuModel = createModel(context, () => MenuModel());
    nomeTextControllerValidator = _nomeTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    celularTextControllerValidator = _celularTextControllerValidator;
    aasuntoTextControllerValidator = _aasuntoTextControllerValidator;
    menuInferiorModel = createModel(context, () => MenuInferiorModel());
  }

  @override
  void dispose() {
    logoSuperiorModel.dispose();
    menuModel.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();

    aasuntoFocusNode?.dispose();
    aasuntoTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();

    menuInferiorModel.dispose();
  }
}
