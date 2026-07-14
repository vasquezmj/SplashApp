import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'panel_a_d_m_model.dart';
export 'panel_a_d_m_model.dart';

class PanelADMWidget extends StatefulWidget {
  const PanelADMWidget({super.key});

  static String routeName = 'panelADM';
  static String routePath = '/panelADM';

  @override
  State<PanelADMWidget> createState() => _PanelADMWidgetState();
}

class _PanelADMWidgetState extends State<PanelADMWidget> {
  late PanelADMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PanelADMModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: custom_widgets.AdminPanelLavaCars(
              width: double.infinity,
              height: double.infinity,
              totalCitas: '20',
              citasPendientes: '15',
              citasCompletadas: '5',
            ),
          ),
        ),
      ),
    );
  }
}
