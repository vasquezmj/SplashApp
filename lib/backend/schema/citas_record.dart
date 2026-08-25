import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fecha_hora" field.
  DateTime? _fechaHora;
  DateTime? get fechaHora => _fechaHora;
  bool hasFechaHora() => _fechaHora != null;

  // "servicio" field.
  String? _servicio;
  String get servicio => _servicio ?? '';
  bool hasServicio() => _servicio != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "cliente_email" field.
  String? _clienteEmail;
  String get clienteEmail => _clienteEmail ?? '';
  bool hasClienteEmail() => _clienteEmail != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "cliente_nombre" field.
  String? _clienteNombre;
  String get clienteNombre => _clienteNombre ?? '';
  bool hasClienteNombre() => _clienteNombre != null;

  // "tipo_vehiculo" field.
  String? _tipoVehiculo;
  String get tipoVehiculo => _tipoVehiculo ?? '';
  bool hasTipoVehiculo() => _tipoVehiculo != null;

  void _initializeFields() {
    _fechaHora = snapshotData['fecha_hora'] as DateTime?;
    _servicio = snapshotData['servicio'] as String?;
    _estado = snapshotData['estado'] as String?;
    _clienteEmail = snapshotData['cliente_email'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _clienteNombre = snapshotData['cliente_nombre'] as String?;
    _tipoVehiculo = snapshotData['tipo_vehiculo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  DateTime? fechaHora,
  String? servicio,
  String? estado,
  String? clienteEmail,
  double? precio,
  String? clienteNombre,
  String? tipoVehiculo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha_hora': fechaHora,
      'servicio': servicio,
      'estado': estado,
      'cliente_email': clienteEmail,
      'precio': precio,
      'cliente_nombre': clienteNombre,
      'tipo_vehiculo': tipoVehiculo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.fechaHora == e2?.fechaHora &&
        e1?.servicio == e2?.servicio &&
        e1?.estado == e2?.estado &&
        e1?.clienteEmail == e2?.clienteEmail &&
        e1?.precio == e2?.precio &&
        e1?.clienteNombre == e2?.clienteNombre &&
        e1?.tipoVehiculo == e2?.tipoVehiculo;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.fechaHora,
        e?.servicio,
        e?.estado,
        e?.clienteEmail,
        e?.precio,
        e?.clienteNombre,
        e?.tipoVehiculo
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
