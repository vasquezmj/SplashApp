import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromocionesRecord extends FirestoreRecord {
  PromocionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_promociones" field.
  String? _idPromociones;
  String get idPromociones => _idPromociones ?? '';
  bool hasIdPromociones() => _idPromociones != null;

  void _initializeFields() {
    _idPromociones = snapshotData['id_promociones'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promociones');

  static Stream<PromocionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromocionesRecord.fromSnapshot(s));

  static Future<PromocionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromocionesRecord.fromSnapshot(s));

  static PromocionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromocionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromocionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromocionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromocionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromocionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromocionesRecordData({
  String? idPromociones,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_promociones': idPromociones,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromocionesRecordDocumentEquality implements Equality<PromocionesRecord> {
  const PromocionesRecordDocumentEquality();

  @override
  bool equals(PromocionesRecord? e1, PromocionesRecord? e2) {
    return e1?.idPromociones == e2?.idPromociones;
  }

  @override
  int hash(PromocionesRecord? e) =>
      const ListEquality().hash([e?.idPromociones]);

  @override
  bool isValidKey(Object? o) => o is PromocionesRecord;
}
