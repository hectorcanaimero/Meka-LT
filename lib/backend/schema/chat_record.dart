import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatRecord extends FirestoreRecord {
  ChatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "view_message" field.
  bool? _viewMessage;
  bool get viewMessage => _viewMessage ?? false;
  bool hasViewMessage() => _viewMessage != null;

  // "type_user" field.
  int? _typeUser;
  int get typeUser => _typeUser ?? 0;
  bool hasTypeUser() => _typeUser != null;

  // "type_message" field.
  String? _typeMessage;
  String get typeMessage => _typeMessage ?? '';
  bool hasTypeMessage() => _typeMessage != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _viewMessage = snapshotData['view_message'] as bool?;
    _typeUser = castToType<int>(snapshotData['type_user']);
    _typeMessage = snapshotData['type_message'] as String?;
    _owner = snapshotData['owner'] as String?;
    _message = snapshotData['message'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('chat')
          : FirebaseFirestore.instance.collectionGroup('chat');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('chat').doc();

  static Stream<ChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatRecord.fromSnapshot(s));

  static Future<ChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatRecord.fromSnapshot(s));

  static ChatRecord fromSnapshot(DocumentSnapshot snapshot) => ChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatRecordData({
  bool? viewMessage,
  int? typeUser,
  String? typeMessage,
  String? owner,
  String? message,
  DateTime? date,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'view_message': viewMessage,
      'type_user': typeUser,
      'type_message': typeMessage,
      'owner': owner,
      'message': message,
      'date': date,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatRecordDocumentEquality implements Equality<ChatRecord> {
  const ChatRecordDocumentEquality();

  @override
  bool equals(ChatRecord? e1, ChatRecord? e2) {
    return e1?.viewMessage == e2?.viewMessage &&
        e1?.typeUser == e2?.typeUser &&
        e1?.typeMessage == e2?.typeMessage &&
        e1?.owner == e2?.owner &&
        e1?.message == e2?.message &&
        e1?.date == e2?.date &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ChatRecord? e) => const ListEquality().hash([
        e?.viewMessage,
        e?.typeUser,
        e?.typeMessage,
        e?.owner,
        e?.message,
        e?.date,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatRecord;
}
