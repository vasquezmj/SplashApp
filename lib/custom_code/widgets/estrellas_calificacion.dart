// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class EstrellasCalificacion extends StatefulWidget {
  const EstrellasCalificacion({
    Key? key,
    this.width,
    this.height,
    required this.calificacionInicial,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double calificacionInicial;

  @override
  _EstrellasCalificacionState createState() => _EstrellasCalificacionState();
}

class _EstrellasCalificacionState extends State<EstrellasCalificacion> {
  late int _rating;

  @override
  void initState() {
    super.initState();
    _rating = widget.calificacionInicial.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return IconButton(
          icon: Icon(
            index < _rating ? Icons.star : Icons.star_border,
            color: Colors.amber,
            size: 32.0,
          ),
          onPressed: () {
            setState(() {
              _rating = index + 1;
            });
          },
        );
      }),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
