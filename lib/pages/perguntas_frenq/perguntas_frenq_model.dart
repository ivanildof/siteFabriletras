import '/components/logo_superior_widget.dart';
import '/components/menu_inferior_widget.dart';
import '/componets/menu/menu_widget.dart';
import '/componets/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'perguntas_frenq_widget.dart' show PerguntasFrenqWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PerguntasFrenqModel extends FlutterFlowModel<PerguntasFrenqWidget> {
  ///  Local state fields for this page.

  bool? painelACM;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for logoSuperior component.
  late LogoSuperiorModel logoSuperiorModel;
  // Model for menu component.
  late MenuModel menuModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

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
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    expandableExpandableController5.dispose();
    menuInferiorModel.dispose();
    menuLateralModel.dispose();
  }
}
