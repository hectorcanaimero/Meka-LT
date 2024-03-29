// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyStruct extends FFFirebaseStruct {
  CompanyStruct({
    String? name,
    LatLng? position,
    List<String>? categories,
    List<String>? payment,
    String? typeCompany,
    String? id,
    String? user,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _position = position,
        _categories = categories,
        _payment = payment,
        _typeCompany = typeCompany,
        _id = id,
        _user = user,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "position" field.
  LatLng? _position;
  LatLng? get position => _position;
  set position(LatLng? val) => _position = val;
  bool hasPosition() => _position != null;

  // "categories" field.
  List<String>? _categories;
  List<String> get categories => _categories ?? const [];
  set categories(List<String>? val) => _categories = val;
  void updateCategories(Function(List<String>) updateFn) =>
      updateFn(_categories ??= []);
  bool hasCategories() => _categories != null;

  // "payment" field.
  List<String>? _payment;
  List<String> get payment => _payment ?? const [];
  set payment(List<String>? val) => _payment = val;
  void updatePayment(Function(List<String>) updateFn) =>
      updateFn(_payment ??= []);
  bool hasPayment() => _payment != null;

  // "type_company" field.
  String? _typeCompany;
  String get typeCompany => _typeCompany ?? '';
  set typeCompany(String? val) => _typeCompany = val;
  bool hasTypeCompany() => _typeCompany != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  set user(String? val) => _user = val;
  bool hasUser() => _user != null;

  static CompanyStruct fromMap(Map<String, dynamic> data) => CompanyStruct(
        name: data['name'] as String?,
        position: data['position'] as LatLng?,
        categories: getDataList(data['categories']),
        payment: getDataList(data['payment']),
        typeCompany: data['type_company'] as String?,
        id: data['id'] as String?,
        user: data['user'] as String?,
      );

  static CompanyStruct? maybeFromMap(dynamic data) =>
      data is Map ? CompanyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'position': _position,
        'categories': _categories,
        'payment': _payment,
        'type_company': _typeCompany,
        'id': _id,
        'user': _user,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.LatLng,
        ),
        'categories': serializeParam(
          _categories,
          ParamType.String,
          true,
        ),
        'payment': serializeParam(
          _payment,
          ParamType.String,
          true,
        ),
        'type_company': serializeParam(
          _typeCompany,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.String,
        ),
      }.withoutNulls;

  static CompanyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.LatLng,
          false,
        ),
        categories: deserializeParam<String>(
          data['categories'],
          ParamType.String,
          true,
        ),
        payment: deserializeParam<String>(
          data['payment'],
          ParamType.String,
          true,
        ),
        typeCompany: deserializeParam(
          data['type_company'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CompanyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyStruct &&
        name == other.name &&
        position == other.position &&
        listEquality.equals(categories, other.categories) &&
        listEquality.equals(payment, other.payment) &&
        typeCompany == other.typeCompany &&
        id == other.id &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, position, categories, payment, typeCompany, id, user]);
}

CompanyStruct createCompanyStruct({
  String? name,
  LatLng? position,
  String? typeCompany,
  String? id,
  String? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompanyStruct(
      name: name,
      position: position,
      typeCompany: typeCompany,
      id: id,
      user: user,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompanyStruct? updateCompanyStruct(
  CompanyStruct? company, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    company
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompanyStructData(
  Map<String, dynamic> firestoreData,
  CompanyStruct? company,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (company == null) {
    return;
  }
  if (company.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && company.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final companyData = getCompanyFirestoreData(company, forFieldValue);
  final nestedData = companyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = company.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompanyFirestoreData(
  CompanyStruct? company, [
  bool forFieldValue = false,
]) {
  if (company == null) {
    return {};
  }
  final firestoreData = mapToFirestore(company.toMap());

  // Add any Firestore field values
  company.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompanyListFirestoreData(
  List<CompanyStruct>? companys,
) =>
    companys?.map((e) => getCompanyFirestoreData(e, true)).toList() ?? [];
