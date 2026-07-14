// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class AdminPanelLavaCars extends StatefulWidget {
  const AdminPanelLavaCars({
    Key? key,
    this.width,
    this.height,
    required this.totalCitas,
    required this.citasPendientes,
    required this.citasCompletadas,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String totalCitas;
  final String citasPendientes;
  final String citasCompletadas;

  @override
  State<AdminPanelLavaCars> createState() => _AdminPanelLavaCarsState();
}

class _AdminPanelLavaCarsState extends State<AdminPanelLavaCars> {
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
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 24.0, bottom: 112.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- SECCIÓN: RESUMEN DE HOY ---
              const Text(
                'RESUMEN DE HOY',
                style: TextStyle(
                  fontFamily: 'Hanken Grotesk',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.7,
                  color: Color(0xFF43474F),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSummaryCard(widget.totalCitas, 'Total',
                      const Color(0xFF001E40), null),
                  _buildSummaryCard(widget.citasPendientes, 'Pendientes',
                      const Color(0xFF2DBCFE), const Color(0xFF2DBCFE)),
                  _buildSummaryCard(widget.citasCompletadas, 'Completadas',
                      const Color(0xFF36B24E), const Color(0xFF36B24E)),
                ],
              ),

              const SizedBox(height: 32),

              // --- SECCIÓN: CITAS DE HOY ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Citas de Hoy',
                    style: TextStyle(
                      fontFamily: 'Hanken Grotesk',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xFF001E40),
                    ),
                  ),
                  Text(
                    'Ver todas',
                    style: TextStyle(
                      fontFamily: 'Hanken Grotesk',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color(0xFF2DBCFE),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Lista de Tarjetas de Citas (Hardcodeadas visualmente según tu Figma)
              _buildAppointmentCard(
                clientName: 'Carlos Mendoza',
                time: '10:00 AM - Lavado Sencillo',
                statusText: 'Pendiente',
                statusBgColor: const Color(0xFFE7E8E9),
                statusTextColor: const Color(0xFF43474F),
                buttonText: 'Atender',
                buttonBgColor: const Color(0xFF2DBCFE),
                leftBorderColor: Colors.transparent,
              ),
              const SizedBox(height: 16),
              _buildAppointmentCard(
                clientName: 'María Rojas',
                time: '08:30 AM - Lavado Completo',
                statusText: 'En Proceso',
                statusBgColor: const Color(0xFFC6E7FF),
                statusTextColor: const Color(0xFF004866),
                buttonText: 'Finalizar',
                buttonBgColor: const Color(0xFF36B24E),
                leftBorderColor: const Color(0xFF2DBCFE),
                showButtonIcon: true,
              ),
              const SizedBox(height: 16),
              _buildAppointmentCard(
                clientName: 'Juan Pérez',
                time: '07:00 AM - Aspirado',
                statusText: 'Completado',
                statusBgColor: const Color(0xFFE7E8E9),
                statusTextColor: const Color(0xFF43474F),
                buttonText: 'Ver Detalles',
                buttonBgColor: const Color(0xFF2DBCFE),
                leftBorderColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper para crear las métricas del resumen
  Widget _buildSummaryCard(String number, String label, Color numberColor,
      Color? bottomBorderColor) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: 82,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: bottomBorderColor != null
              ? Border(bottom: BorderSide(color: bottomBorderColor, width: 2))
              : null,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF001E40).withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number,
              style: TextStyle(
                fontFamily: 'Hanken Grotesk',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: numberColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'Hanken Grotesk',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                letterSpacing: 0.48,
                color: Color(0xFF43474F),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper para crear las tarjetas de citas
  Widget _buildAppointmentCard({
    required String clientName,
    required String time,
    required String statusText,
    required Color statusBgColor,
    required Color statusTextColor,
    required String buttonText,
    required Color buttonBgColor,
    required Color leftBorderColor,
    bool showButtonIcon = false,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: leftBorderColor != Colors.transparent
            ? Border(left: BorderSide(color: leftBorderColor, width: 4))
            : null,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF001E40).withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      clientName,
                      style: const TextStyle(
                        fontFamily: 'Hanken Grotesk',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xFF191C1D),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.access_time,
                            size: 14, color: Color(0xFF43474F)),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            time,
                            style: const TextStyle(
                              fontFamily: 'Hanken Grotesk',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF43474F),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: statusBgColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  statusText,
                  style: TextStyle(
                    fontFamily: 'Hanken Grotesk',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: statusTextColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 36,
            decoration: BoxDecoration(
              color: buttonBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (showButtonIcon) ...[
                  const Icon(Icons.check, color: Colors.white, size: 16),
                  const SizedBox(width: 4),
                ],
                Text(
                  buttonText,
                  style: const TextStyle(
                    fontFamily: 'Hanken Grotesk',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    letterSpacing: 0.48,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
