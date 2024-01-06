// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhotosStruct extends FFFirebaseStruct {
  PhotosStruct({
    List<String>? list,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _list = list,
        super(firestoreUtilData);

  // "list" field.
  List<String>? _list;
  List<String> get list => _list ?? const [];
  set list(List<String>? val) => _list = val;
  void updateList(Function(List<String>) updateFn) => updateFn(_list ??= []);
  bool hasList() => _list != null;

  static PhotosStruct fromMap(Map<String, dynamic> data) => PhotosStruct(
        list: getDataList(data['list']),
      );

  static PhotosStruct? maybeFromMap(dynamic data) =>
      data is Map ? PhotosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'list': _list,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'list': serializeParam(
          _list,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static PhotosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PhotosStruct(
        list: deserializeParam<String>(
          data['list'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'PhotosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PhotosStruct && listEquality.equals(list, other.list);
  }

  @override
  int get hashCode => const ListEquality().hash([list]);
}

PhotosStruct createPhotosStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PhotosStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PhotosStruct? updatePhotosStruct(
  PhotosStruct? photos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    photos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPhotosStructData(
  Map<String, dynamic> firestoreData,
  PhotosStruct? photos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (photos == null) {
    return;
  }
  if (photos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && photos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final photosData = getPhotosFirestoreData(photos, forFieldValue);
  final nestedData = photosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = photos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPhotosFirestoreData(
  PhotosStruct? photos, [
  bool forFieldValue = false,
]) {
  if (photos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(photos.toMap());

  // Add any Firestore field values
  photos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPhotosListFirestoreData(
  List<PhotosStruct>? photoss,
) =>
    photoss?.map((e) => getPhotosFirestoreData(e, true)).toList() ?? [];
