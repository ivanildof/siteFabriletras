import '/components/logo_superior_widget.dart';
import '/components/menu_inferior_widget.dart';
import '/componets/menu/menu_widget.dart';
import '/componets/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhes_widget.dart' show DetalhesWidget;
import 'package:flutter/material.dart';

class DetalhesModel extends FlutterFlowModel<DetalhesWidget> {
  ///  Local state fields for this page.

  bool? painelACM;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for logoSuperior component.
  late LogoSuperiorModel logoSuperiorModel;
  // Stores action output result for [Custom Action - verificacao] action in logoSuperior widget.
  bool? verificaoca;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for menuInferior component.
  late MenuInferiorModel menuInferiorModel;
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    logoSuperiorModel = createModel(context, () => LogoSuperiorModel());
    menuModel = createModel(context, () => MenuModel());
    menuInferiorModel = createModel(context, () => MenuInferiorModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    logoSuperiorModel.dispose();
    menuModel.dispose();
    menuInferiorModel.dispose();
    menuLateralModel.dispose();
  }
}
