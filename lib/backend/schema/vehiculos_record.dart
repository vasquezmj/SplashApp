import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehiculosRecord extends FirestoreRecord {
  VehiculosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_vehiculo" field.
  String? _idVehiculo;
  String get idVehiculo => _idVehiculo ?? '';
  bool hasIdVehiculo() => _idVehiculo != null;

  void _initializeFields() {
    _idVehiculo = snapshotData['id_vehiculo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehiculos');

  static Stream<VehiculosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehiculosRecord.fromSnapshot(s));

  static Future<VehiculosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VehiculosRecord.fromSnapshot(s));

  static VehiculosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehiculosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehiculosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehiculosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehiculosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehiculosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehiculosRecordData({
  String? idVehiculo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_vehiculo': idVehiculo,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehiculosRecordDocumentEquality implements Equality<VehiculosRecord> {
  const VehiculosRecordDocumentEquality();

  @override
  bool equals(VehiculosRecord? e1, VehiculosRecord? e2) {
    return e1?.idVehiculo == e2?.idVehiculo;
  }

  @override
  int hash(VehiculosRecord? e) => const ListEquality().hash([e?.idVehiculo]);

  @override
  bool isValidKey(Object? o) => o is VehiculosRecord;
}
