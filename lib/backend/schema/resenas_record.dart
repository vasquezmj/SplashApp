import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResenasRecord extends FirestoreRecord {
  ResenasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_resena" field.
  String? _idResena;
  String get idResena => _idResena ?? '';
  bool hasIdResena() => _idResena != null;

  void _initializeFields() {
    _idResena = snapshotData['id_resena'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resenas');

  static Stream<ResenasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResenasRecord.fromSnapshot(s));

  static Future<ResenasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResenasRecord.fromSnapshot(s));

  static ResenasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResenasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResenasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResenasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResenasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResenasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResenasRecordData({
  String? idResena,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_resena': idResena,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResenasRecordDocumentEquality implements Equality<ResenasRecord> {
  const ResenasRecordDocumentEquality();

  @override
  bool equals(ResenasRecord? e1, ResenasRecord? e2) {
    return e1?.idResena == e2?.idResena;
  }

  @override
  int hash(ResenasRecord? e) => const ListEquality().hash([e?.idResena]);

  @override
  bool isValidKey(Object? o) => o is ResenasRecord;
}
