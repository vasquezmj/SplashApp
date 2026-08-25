import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonalRecord extends FirestoreRecord {
  PersonalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_personal" field.
  String? _idPersonal;
  String get idPersonal => _idPersonal ?? '';
  bool hasIdPersonal() => _idPersonal != null;

  void _initializeFields() {
    _idPersonal = snapshotData['id_personal'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('personal');

  static Stream<PersonalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonalRecord.fromSnapshot(s));

  static Future<PersonalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PersonalRecord.fromSnapshot(s));

  static PersonalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PersonalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPersonalRecordData({
  String? idPersonal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_personal': idPersonal,
    }.withoutNulls,
  );

  return firestoreData;
}

class PersonalRecordDocumentEquality implements Equality<PersonalRecord> {
  const PersonalRecordDocumentEquality();

  @override
  bool equals(PersonalRecord? e1, PersonalRecord? e2) {
    return e1?.idPersonal == e2?.idPersonal;
  }

  @override
  int hash(PersonalRecord? e) => const ListEquality().hash([e?.idPersonal]);

  @override
  bool isValidKey(Object? o) => o is PersonalRecord;
}
