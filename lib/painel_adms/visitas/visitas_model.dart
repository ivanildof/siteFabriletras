import '/backend/backend.dart';
import '/componets/drawer/drawer_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'visitas_widget.dart' show VisitasWidget;
import 'package:flutter/material.dart';

class VisitasModel extends FlutterFlowModel<VisitasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VisitasRecord>();
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
