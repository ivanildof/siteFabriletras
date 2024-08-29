import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrcamentosRecord extends FirestoreRecord {
  OrcamentosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "assunto" field.
  String? _assunto;
  String get assunto => _assunto ?? '';
  bool hasAssunto() => _assunto != null;

  // "nomeCliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  bool hasNomeCliente() => _nomeCliente != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  bool hasCelular() => _celular != null;

  // "arquivoPDF" field.
  String? _arquivoPDF;
  String get arquivoPDF => _arquivoPDF ?? '';
  bool hasArquivoPDF() => _arquivoPDF != null;

  void _initializeFields() {
    _assunto = snapshotData['assunto'] as String?;
    _nomeCliente = snapshotData['nomeCliente'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _celular = snapshotData['celular'] as String?;
    _arquivoPDF = snapshotData['arquivoPDF'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orcamentos');

  static Stream<OrcamentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrcamentosRecord.fromSnapshot(s));

  static Future<OrcamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrcamentosRecord.fromSnapshot(s));

  static OrcamentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrcamentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrcamentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrcamentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrcamentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrcamentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrcamentosRecordData({
  String? assunto,
  String? nomeCliente,
  DateTime? data,
  String? email,
  String? titulo,
  String? celular,
  String? arquivoPDF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assunto': assunto,
      'nomeCliente': nomeCliente,
      'data': data,
      'email': email,
      'titulo': titulo,
      'celular': celular,
      'arquivoPDF': arquivoPDF,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrcamentosRecordDocumentEquality implements Equality<OrcamentosRecord> {
  const OrcamentosRecordDocumentEquality();

  @override
  bool equals(OrcamentosRecord? e1, OrcamentosRecord? e2) {
    return e1?.assunto == e2?.assunto &&
        e1?.nomeCliente == e2?.nomeCliente &&
        e1?.data == e2?.data &&
        e1?.email == e2?.email &&
        e1?.titulo == e2?.titulo &&
        e1?.celular == e2?.celular &&
        e1?.arquivoPDF == e2?.arquivoPDF;
  }

  @override
  int hash(OrcamentosRecord? e) => const ListEquality().hash([
        e?.assunto,
        e?.nomeCliente,
        e?.data,
        e?.email,
        e?.titulo,
        e?.celular,
        e?.arquivoPDF
      ]);

  @override
  bool isValidKey(Object? o) => o is OrcamentosRecord;
}
