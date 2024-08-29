import '/backend/backend.dart';
import '/componets/drawer/drawer_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'revendedores_widget.dart' show RevendedoresWidget;
import 'package:flutter/material.dart';

class RevendedoresModel extends FlutterFlowModel<RevendedoresWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<RevendedorRecord>();
  // Model for drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    drawerModel.dispose();
  }
}
