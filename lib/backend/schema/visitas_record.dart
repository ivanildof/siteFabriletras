import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VisitasRecord extends FirestoreRecord {
  VisitasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _email = snapshotData['email'] as String?;
    _data = snapshotData['data'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VISITAS');

  static Stream<VisitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VisitasRecord.fromSnapshot(s));

  static Future<VisitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VisitasRecord.fromSnapshot(s));

  static VisitasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VisitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VisitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VisitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VisitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VisitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVisitasRecordData({
  String? nome,
  String? email,
  DateTime? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'email': email,
      'data': data,
    }.withoutNulls,
  );

  return firestoreData;
}

class VisitasRecordDocumentEquality implements Equality<VisitasRecord> {
  const VisitasRecordDocumentEquality();

  @override
  bool equals(VisitasRecord? e1, VisitasRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.email == e2?.email &&
        e1?.data == e2?.data;
  }

  @override
  int hash(VisitasRecord? e) =>
      const ListEquality().hash([e?.nome, e?.email, e?.data]);

  @override
  bool isValidKey(Object? o) => o is VisitasRecord;
}
