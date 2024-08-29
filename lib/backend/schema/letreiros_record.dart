import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LetreirosRecord extends FirestoreRecord {
  LetreirosRecord._(
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

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "homePage" field.
  bool? _homePage;
  bool get homePage => _homePage ?? false;
  bool hasHomePage() => _homePage != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _img = snapshotData['img'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _descricao = snapshotData['descricao'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _homePage = snapshotData['homePage'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('letreiros');

  static Stream<LetreirosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LetreirosRecord.fromSnapshot(s));

  static Future<LetreirosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LetreirosRecord.fromSnapshot(s));

  static LetreirosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LetreirosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LetreirosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LetreirosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LetreirosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LetreirosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLetreirosRecordData({
  String? nome,
  String? img,
  DateTime? data,
  String? descricao,
  String? categoria,
  bool? homePage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'img': img,
      'data': data,
      'descricao': descricao,
      'categoria': categoria,
      'homePage': homePage,
    }.withoutNulls,
  );

  return firestoreData;
}

class LetreirosRecordDocumentEquality implements Equality<LetreirosRecord> {
  const LetreirosRecordDocumentEquality();

  @override
  bool equals(LetreirosRecord? e1, LetreirosRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.img == e2?.img &&
        e1?.data == e2?.data &&
        e1?.descricao == e2?.descricao &&
        e1?.categoria == e2?.categoria &&
        e1?.homePage == e2?.homePage;
  }

  @override
  int hash(LetreirosRecord? e) => const ListEquality().hash(
      [e?.nome, e?.img, e?.data, e?.descricao, e?.categoria, e?.homePage]);

  @override
  bool isValidKey(Object? o) => o is LetreirosRecord;
}
