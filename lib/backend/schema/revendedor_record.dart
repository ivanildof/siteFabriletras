import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RevendedorRecord extends FirestoreRecord {
  RevendedorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
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

  // "celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  bool hasCelular() => _celular != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _email = snapshotData['email'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _celular = snapshotData['celular'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('revendedor');

  static Stream<RevendedorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RevendedorRecord.fromSnapshot(s));

  static Future<RevendedorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RevendedorRecord.fromSnapshot(s));

  static RevendedorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RevendedorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RevendedorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RevendedorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RevendedorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RevendedorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRevendedorRecordData({
  String? nome,
  String? email,
  DateTime? data,
  String? celular,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'email': email,
      'data': data,
      'celular': celular,
    }.withoutNulls,
  );

  return firestoreData;
}

class RevendedorRecordDocumentEquality implements Equality<RevendedorRecord> {
  const RevendedorRecordDocumentEquality();

  @override
  bool equals(RevendedorRecord? e1, RevendedorRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.email == e2?.email &&
        e1?.data == e2?.data &&
        e1?.celular == e2?.celular;
  }

  @override
  int hash(RevendedorRecord? e) =>
      const ListEquality().hash([e?.nome, e?.email, e?.data, e?.celular]);

  @override
  bool isValidKey(Object? o) => o is RevendedorRecord;
}
