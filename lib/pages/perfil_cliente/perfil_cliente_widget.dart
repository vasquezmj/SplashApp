import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'perfil_cliente_model.dart';
export 'perfil_cliente_model.dart';

class PerfilClienteWidget extends StatefulWidget {
  const PerfilClienteWidget({super.key});

  static String routeName = 'perfilCliente';
  static String routePath = '/perfilCliente';

  @override
  State<PerfilClienteWidget> createState() => _PerfilClienteWidgetState();
}

class _PerfilClienteWidgetState extends State<PerfilClienteWidget> {
  late PerfilClienteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PerfilClienteModel());
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
            child: custom_widgets.UserProfileLavaCars(
              width: double.infinity,
              height: double.infinity,
              fullName: 'mau',
              phone: '555',
              licensePlate: '123',
            ),
          ),
        ),
      ),
    );
  }
}
