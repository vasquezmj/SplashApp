// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class IndicadorProgreso extends StatefulWidget {
  const IndicadorProgreso({
    Key? key,
    this.width,
    this.height,
    required this.porcentaje,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double porcentaje;

  @override
  _IndicadorProgresoState createState() => _IndicadorProgresoState();
}

class _IndicadorProgresoState extends State<IndicadorProgreso> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 100,
      height: widget.height ?? 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: widget.porcentaje,
            strokeWidth: 8.0,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          Center(
            child: Text(
              '${(widget.porcentaje * 100).toInt()}%',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
