import '/components/logo_superior_widget.dart';
import '/components/menu_inferior_widget.dart';
import '/componets/menu/menu_widget.dart';
import '/componets/menu_lateral/menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool? painelACM;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for logoSuperior component.
  late LogoSuperiorModel logoSuperiorModel;
  // Model for menu component.
  late MenuModel menuModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController2;
  int carouselCurrentIndex2 = 1;

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
