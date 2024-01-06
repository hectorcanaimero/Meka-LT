// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends FFFirebaseStruct {
  UsersStruct({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? countryName,
    String? countryId,
    String? typeUser,
    String? id,
    String? tokenPush,
    int? score,
    String? scoreName,
    String? language,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _phone = phone,
        _countryName = countryName,
        _countryId = countryId,
        _typeUser = typeUser,
        _id = id,
        _tokenPush = tokenPush,
        _score = score,
        _scoreName = scoreName,
        _language = language,
        super(firestoreUtilData);

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  set countryName(String? val) => _countryName = val;
  bool hasCountryName() => _countryName != null;

  // "countryId" field.
  String? _countryId;
  String get countryId => _countryId ?? '';
  set countryId(String? val) => _countryId = val;
  bool hasCountryId() => _countryId != null;

  // "typeUser" field.
  String? _typeUser;
  String get typeUser => _typeUser ?? '';
  set typeUser(String? val) => _typeUser = val;
  bool hasTypeUser() => _typeUser != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "tokenPush" field.
  String? _tokenPush;
  String get tokenPush => _tokenPush ?? '';
  set tokenPush(String? val) => _tokenPush = val;
  bool hasTokenPush() => _tokenPush != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  set score(int? val) => _score = val;
  void incrementScore(int amount) => _score = score + amount;
  bool hasScore() => _score != null;

  // "scoreName" field.
  String? _scoreName;
  String get scoreName => _scoreName ?? '';
  set scoreName(String? val) => _scoreName = val;
  bool hasScoreName() => _scoreName != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;
  bool hasLanguage() => _language != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        countryName: data['countryName'] as String?,
        countryId: data['countryId'] as String?,
        typeUser: data['typeUser'] as String?,
        id: data['id'] as String?,
        tokenPush: data['tokenPush'] as String?,
        score: castToType<int>(data['score']),
        scoreName: data['scoreName'] as String?,
        language: data['language'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
        'phone': _phone,
        'countryName': _countryName,
        'countryId': _countryId,
        'typeUser': _typeUser,
        'id': _id,
        'tokenPush': _tokenPush,
        'score': _score,
        'scoreName': _scoreName,
        'language': _language,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'countryName': serializeParam(
          _countryName,
          ParamType.String,
        ),
        'countryId': serializeParam(
          _countryId,
          ParamType.String,
        ),
        'typeUser': serializeParam(
          _typeUser,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'tokenPush': serializeParam(
          _tokenPush,
          ParamType.String,
        ),
        'score': serializeParam(
          _score,
          ParamType.int,
        ),
        'scoreName': serializeParam(
          _scoreName,
          ParamType.String,
        ),
        'language': serializeParam(
          _language,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        countryName: deserializeParam(
          data['countryName'],
          ParamType.String,
          false,
        ),
        countryId: deserializeParam(
          data['countryId'],
          ParamType.String,
          false,
        ),
        typeUser: deserializeParam(
          data['typeUser'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        tokenPush: deserializeParam(
          data['tokenPush'],
          ParamType.String,
          false,
        ),
        score: deserializeParam(
          data['score'],
          ParamType.int,
          false,
        ),
        scoreName: deserializeParam(
          data['scoreName'],
          ParamType.String,
          false,
        ),
        language: deserializeParam(
          data['language'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phone == other.phone &&
        countryName == other.countryName &&
        countryId == other.countryId &&
        typeUser == other.typeUser &&
        id == other.id &&
        tokenPush == other.tokenPush &&
        score == other.score &&
        scoreName == other.scoreName &&
        language == other.language;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstName,
        lastName,
        email,
        phone,
        countryName,
        countryId,
        typeUser,
        id,
        tokenPush,
        score,
        scoreName,
        language
      ]);
}

UsersStruct createUsersStruct({
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  String? countryName,
  String? countryId,
  String? typeUser,
  String? id,
  String? tokenPush,
  int? score,
  String? scoreName,
  String? language,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsersStruct(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      countryName: countryName,
      countryId: countryId,
      typeUser: typeUser,
      id: id,
      tokenPush: tokenPush,
      score: score,
      scoreName: scoreName,
      language: language,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsersStruct? updateUsersStruct(
  UsersStruct? users, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    users
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsersStructData(
  Map<String, dynamic> firestoreData,
  UsersStruct? users,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (users == null) {
    return;
  }
  if (users.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && users.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usersData = getUsersFirestoreData(users, forFieldValue);
  final nestedData = usersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = users.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsersFirestoreData(
  UsersStruct? users, [
  bool forFieldValue = false,
]) {
  if (users == null) {
    return {};
  }
  final firestoreData = mapToFirestore(users.toMap());

  // Add any Firestore field values
  users.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsersListFirestoreData(
  List<UsersStruct>? userss,
) =>
    userss?.map((e) => getUsersFirestoreData(e, true)).toList() ?? [];
