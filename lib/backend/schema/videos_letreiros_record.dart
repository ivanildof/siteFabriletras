import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosLetreirosRecord extends FirestoreRecord {
  VideosLetreirosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "cadegoria" field.
  String? _cadegoria;
  String get cadegoria => _cadegoria ?? '';
  bool hasCadegoria() => _cadegoria != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "videoYoutube" field.
  String? _videoYoutube;
  String get videoYoutube => _videoYoutube ?? '';
  bool hasVideoYoutube() => _videoYoutube != null;

  void _initializeFields() {
    _video = snapshotData['video'] as String?;
    _cadegoria = snapshotData['cadegoria'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _videoYoutube = snapshotData['videoYoutube'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videosLetreiros');

  static Stream<VideosLetreirosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosLetreirosRecord.fromSnapshot(s));

  static Future<VideosLetreirosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosLetreirosRecord.fromSnapshot(s));

  static VideosLetreirosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VideosLetreirosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosLetreirosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosLetreirosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosLetreirosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosLetreirosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosLetreirosRecordData({
  String? video,
  String? cadegoria,
  String? titulo,
  String? descricao,
  String? videoYoutube,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'video': video,
      'cadegoria': cadegoria,
      'titulo': titulo,
      'descricao': descricao,
      'videoYoutube': videoYoutube,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosLetreirosRecordDocumentEquality
    implements Equality<VideosLetreirosRecord> {
  const VideosLetreirosRecordDocumentEquality();

  @override
  bool equals(VideosLetreirosRecord? e1, VideosLetreirosRecord? e2) {
    return e1?.video == e2?.video &&
        e1?.cadegoria == e2?.cadegoria &&
        e1?.titulo == e2?.titulo &&
        e1?.descricao == e2?.descricao &&
        e1?.videoYoutube == e2?.videoYoutube;
  }

  @override
  int hash(VideosLetreirosRecord? e) => const ListEquality()
      .hash([e?.video, e?.cadegoria, e?.titulo, e?.descricao, e?.videoYoutube]);

  @override
  bool isValidKey(Object? o) => o is VideosLetreirosRecord;
}
