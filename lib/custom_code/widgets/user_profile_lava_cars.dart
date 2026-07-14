// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class UserProfileLavaCars extends StatefulWidget {
  const UserProfileLavaCars({
    Key? key,
    this.width,
    this.height,
    required this.fullName,
    required this.phone,
    required this.licensePlate,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String fullName;
  final String phone;
  final String licensePlate;

  @override
  State<UserProfileLavaCars> createState() => _UserProfileLavaCarsState();
}

class _UserProfileLavaCarsState extends State<UserProfileLavaCars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Color(0xFFFFFFFF), Color(0xFFF8F9FA)],
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0), // Margen inferior
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. Top App Bar
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Perfil',
                      style: TextStyle(
                        fontFamily: 'Hanken Grotesk',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF001E40),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(
                            0xFF43474F), // Color del trailing icon container
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.settings,
                          color: Colors.white, size: 20),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // 2. Avatar Section con Edit Badge
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 128,
                    height: 128,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE1E3E4),
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: const Color(0xFFF8F9FA), width: 4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.person,
                        size: 80, color: Colors.white), // Placeholder Avatar
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF001E40),
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: const Color(0xFFF8F9FA), width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 15,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child:
                        const Icon(Icons.edit, color: Colors.white, size: 18),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // 3. Name and Role Text
              Text(
                widget.fullName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Nimbus Sans',
                  fontSize: 16,
                  color: Color(0xFF001E40),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Miembro',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Hanken Grotesk',
                  fontSize: 14,
                  color: Color(0xFF43474F),
                ),
              ),

              const SizedBox(height: 32),

              // 4. Form Card
              Container(
                width: 398,
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF001E40).withOpacity(0.06),
                      blurRadius: 16,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    _buildInputField('Nombre Completo', widget.fullName,
                        Icons.person_outline),
                    const SizedBox(height: 16),
                    _buildInputField(
                        'Teléfono', widget.phone, Icons.phone_outlined),
                    const SizedBox(height: 16),
                    _buildInputField('Número de Placa', widget.licensePlate,
                        Icons.directions_car_outlined),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // 5. Action Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 398,
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xFF36B24E),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.save, color: Colors.white, size: 18),
                      SizedBox(width: 8),
                      Text(
                        'Guardar',
                        style: TextStyle(
                          fontFamily: 'Hanken Grotesk',
                          fontWeight: FontWeight
                              .w600, // <--- Aquí estaba el error, ya está corregido
                          fontSize: 14,
                          letterSpacing: 0.14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function para generar los inputs visualmente idénticos
  Widget _buildInputField(String label, String value, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, bottom: 4.0),
          child: Text(
            label,
            style: const TextStyle(
              fontFamily: 'Hanken Grotesk',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              letterSpacing: 0.48,
              color: Color(0xFF43474F),
            ),
          ),
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFF8F9FA),
            border: Border.all(color: const Color(0xFFC3C6D1)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const SizedBox(width: 15),
              Icon(icon, color: const Color(0xFF737780), size: 18),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontFamily: 'Hanken Grotesk',
                    fontSize: 16,
                    color: Color(0xFF191C1D),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
