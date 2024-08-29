import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrabalhosRecord extends FirestoreRecord {
  TrabalhosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _img = snapshotData['img'] as String?;
    _data = snapshotData['data'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trabalhos');

  static Stream<TrabalhosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrabalhosRecord.fromSnapshot(s));

  static Future<TrabalhosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrabalhosRecord.fromSnapshot(s));

  static TrabalhosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrabalhosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrabalhosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrabalhosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrabalhosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrabalhosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrabalhosRecordData({
  String? nome,
  String? img,
  DateTime? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'img': img,
      'data': data,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrabalhosRecordDocumentEquality implements Equality<TrabalhosRecord> {
  const TrabalhosRecordDocumentEquality();

  @override
  bool equals(TrabalhosRecord? e1, TrabalhosRecord? e2) {
    return e1?.nome == e2?.nome && e1?.img == e2?.img && e1?.data == e2?.data;
  }

  @override
  int hash(TrabalhosRecord? e) =>
      const ListEquality().hash([e?.nome, e?.img, e?.data]);

  @override
  bool isValidKey(Object? o) => o is TrabalhosRecord;
}
