// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceStruct extends FFFirebaseStruct {
  ServiceStruct({
    String? id,
    String? status,
    String? category,
    String? brand,
    String? model,
    String? companyId,
    String? companyName,
    String? userName,
    String? userId,
    DateTime? createdAt,
    LatLng? position,
    String? description,
    int? year,
    List<String>? pictures,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _status = status,
        _category = category,
        _brand = brand,
        _model = model,
        _companyId = companyId,
        _companyName = companyName,
        _userName = userName,
        _userId = userId,
        _createdAt = createdAt,
        _position = position,
        _description = description,
        _year = year,
        _pictures = pictures,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;
  bool hasBrand() => _brand != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;
  bool hasModel() => _model != null;

  // "companyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  set companyId(String? val) => _companyId = val;
  bool hasCompanyId() => _companyId != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  set companyName(String? val) => _companyName = val;
  bool hasCompanyName() => _companyName != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;
  bool hasUserId() => _userId != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "position" field.
  LatLng? _position;
  LatLng? get position => _position;
  set position(LatLng? val) => _position = val;
  bool hasPosition() => _position != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;
  void incrementYear(int amount) => _year = year + amount;
  bool hasYear() => _year != null;

  // "pictures" field.
  List<String>? _pictures;
  List<String> get pictures => _pictures ?? const [];
  set pictures(List<String>? val) => _pictures = val;
  void updatePictures(Function(List<String>) updateFn) =>
      updateFn(_pictures ??= []);
  bool hasPictures() => _pictures != null;

  static ServiceStruct fromMap(Map<String, dynamic> data) => ServiceStruct(
        id: data['id'] as String?,
        status: data['status'] as String?,
        category: data['category'] as String?,
        brand: data['brand'] as String?,
        model: data['model'] as String?,
        companyId: data['companyId'] as String?,
        companyName: data['companyName'] as String?,
        userName: data['userName'] as String?,
        userId: data['userId'] as String?,
        createdAt: data['createdAt'] as DateTime?,
        position: data['position'] as LatLng?,
        description: data['description'] as String?,
        year: castToType<int>(data['year']),
        pictures: getDataList(data['pictures']),
      );

  static ServiceStruct? maybeFromMap(dynamic data) =>
      data is Map ? ServiceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'category': _category,
        'brand': _brand,
        'model': _model,
        'companyId': _companyId,
        'companyName': _companyName,
        'userName': _userName,
        'userId': _userId,
        'createdAt': _createdAt,
        'position': _position,
        'description': _description,
        'year': _year,
        'pictures': _pictures,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'companyId': serializeParam(
          _companyId,
          ParamType.String,
        ),
        'companyName': serializeParam(
          _companyName,
          ParamType.String,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'position': serializeParam(
          _position,
          ParamType.LatLng,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
        'pictures': serializeParam(
          _pictures,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static ServiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServiceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        companyId: deserializeParam(
          data['companyId'],
          ParamType.String,
          false,
        ),
        companyName: deserializeParam(
          data['companyName'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.LatLng,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
        pictures: deserializeParam<String>(
          data['pictures'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ServiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ServiceStruct &&
        id == other.id &&
        status == other.status &&
        category == other.category &&
        brand == other.brand &&
        model == other.model &&
        companyId == other.companyId &&
        companyName == other.companyName &&
        userName == other.userName &&
        userId == other.userId &&
        createdAt == other.createdAt &&
        position == other.position &&
        description == other.description &&
        year == other.year &&
        listEquality.equals(pictures, other.pictures);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        status,
        category,
        brand,
        model,
        companyId,
        companyName,
        userName,
        userId,
        createdAt,
        position,
        description,
        year,
        pictures
      ]);
}

ServiceStruct createServiceStruct({
  String? id,
  String? status,
  String? category,
  String? brand,
  String? model,
  String? companyId,
  String? companyName,
  String? userName,
  String? userId,
  DateTime? createdAt,
  LatLng? position,
  String? description,
  int? year,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ServiceStruct(
      id: id,
      status: status,
      category: category,
      brand: brand,
      model: model,
      companyId: companyId,
      companyName: companyName,
      userName: userName,
      userId: userId,
      createdAt: createdAt,
      position: position,
      description: description,
      year: year,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ServiceStruct? updateServiceStruct(
  ServiceStruct? service, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    service
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addServiceStructData(
  Map<String, dynamic> firestoreData,
  ServiceStruct? service,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (service == null) {
    return;
  }
  if (service.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && service.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final serviceData = getServiceFirestoreData(service, forFieldValue);
  final nestedData = serviceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = service.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getServiceFirestoreData(
  ServiceStruct? service, [
  bool forFieldValue = false,
]) {
  if (service == null) {
    return {};
  }
  final firestoreData = mapToFirestore(service.toMap());

  // Add any Firestore field values
  service.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getServiceListFirestoreData(
  List<ServiceStruct>? services,
) =>
    services?.map((e) => getServiceFirestoreData(e, true)).toList() ?? [];
