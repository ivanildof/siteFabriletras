import '/components/logo_superior_widget.dart';
import '/componets/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sitemaps_widget.dart' show SitemapsWidget;
import 'package:flutter/material.dart';

class SitemapsModel extends FlutterFlowModel<SitemapsWidget> {
  ///  Local state fields for this page.

  bool? painelACM;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for logoSuperior component.
  late LogoSuperiorModel logoSuperiorModel;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    logoSuperiorModel = createModel(context, () => LogoSuperiorModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    logoSuperiorModel.dispose();
    menuModel.dispose();
  }
}
