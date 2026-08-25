import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlotaRecord extends FirestoreRecord {
  FlotaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_flota" field.
  String? _idFlota;
  String get idFlota => _idFlota ?? '';
  bool hasIdFlota() => _idFlota != null;

  void _initializeFields() {
    _idFlota = snapshotData['id_flota'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flota');

  static Stream<FlotaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlotaRecord.fromSnapshot(s));

  static Future<FlotaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlotaRecord.fromSnapshot(s));

  static FlotaRecord fromSnapshot(DocumentSnapshot snapshot) => FlotaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlotaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlotaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlotaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FlotaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFlotaRecordData({
  String? idFlota,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_flota': idFlota,
    }.withoutNulls,
  );

  return firestoreData;
}

class FlotaRecordDocumentEquality implements Equality<FlotaRecord> {
  const FlotaRecordDocumentEquality();

  @override
  bool equals(FlotaRecord? e1, FlotaRecord? e2) {
    return e1?.idFlota == e2?.idFlota;
  }

  @override
  int hash(FlotaRecord? e) => const ListEquality().hash([e?.idFlota]);

  @override
  bool isValidKey(Object? o) => o is FlotaRecord;
}
