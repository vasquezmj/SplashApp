// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class Temporizador extends StatefulWidget {
  const Temporizador({
    Key? key,
    this.width,
    this.height,
    this.segundosTotales = 60, // Valor por defecto de 1 minuto
  }) : super(key: key);

  final double? width;
  final double? height;
  final int segundosTotales; // Parámetro para recibir el tiempo

  @override
  _TemporizadorState createState() => _TemporizadorState();
}

class _TemporizadorState extends State<Temporizador> {
  late Timer _timer;
  late int _segundosRestantes;

  @override
  void initState() {
    super.initState();
    _segundosRestantes = widget.segundosTotales;
    _iniciarTemporizador();
  }

  void _iniciarTemporizador() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (_segundosRestantes > 0) {
        if (mounted) {
          setState(() {
            _segundosRestantes--; // Resta un segundo
          });
        }
      } else {
        _timer.cancel(); // Se detiene al llegar a cero
      }
    });
  }

  String get _tiempoFormateado {
    int minutos = _segundosRestantes ~/ 60;
    int segundos = _segundosRestantes % 60;
    return "${minutos.toString().padLeft(2, '0')}:${segundos.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      alignment: Alignment.center,
      child: Text(
        _tiempoFormateado,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
