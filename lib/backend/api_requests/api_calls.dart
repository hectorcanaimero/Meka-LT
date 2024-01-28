import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Meka Group Code

class MekaGroup {
  static String baseUrl = 'https://api.meka.do/api/v2';
  static Map<String, String> headers = {};
  static CountryGelAllCall countryGelAllCall = CountryGelAllCall();
  static TodasLasCategoriasCall todasLasCategoriasCall =
      TodasLasCategoriasCall();
  static TiposDeVehiculosCall tiposDeVehiculosCall = TiposDeVehiculosCall();
  static AuthLoginCall authLoginCall = AuthLoginCall();
  static AuthCreateUserCall authCreateUserCall = AuthCreateUserCall();
  static BannerClienteCall bannerClienteCall = BannerClienteCall();
  static ModelosPorBrandCall modelosPorBrandCall = ModelosPorBrandCall();
  static BrandsPorVehiculoCall brandsPorVehiculoCall = BrandsPorVehiculoCall();
  static UploadStorageCall uploadStorageCall = UploadStorageCall();
  static ConditionsCall conditionsCall = ConditionsCall();
  static CompanyByIdCall companyByIdCall = CompanyByIdCall();
  static TipoCompaniasCall tipoCompaniasCall = TipoCompaniasCall();
  static UserByIdCall userByIdCall = UserByIdCall();
  static UpdateUserCall updateUserCall = UpdateUserCall();
}

class CountryGelAllCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Country Gel All',
      apiUrl: '${MekaGroup.baseUrl}/tables/countries',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? code(dynamic response) => getJsonField(
        response,
        r'''$[:].phone_code''',
        true,
      ) as List?;
  List? country(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:]._id''',
        true,
      ) as List?;
}

class TodasLasCategoriasCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Todas las Categorias',
      apiUrl: '${MekaGroup.baseUrl}/tables/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TiposDeVehiculosCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Tipos de Vehiculos',
      apiUrl: '${MekaGroup.baseUrl}/tables/vehicles',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:]._id''',
        true,
      ) as List?;
  List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
}

class AuthLoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? pushKey = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "password": "${password}",
  "pushKey": "${pushKey}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Auth Login',
      apiUrl: '${MekaGroup.baseUrl}/users/login-company',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  dynamic errordescription(dynamic response) => getJsonField(
        response,
        r'''$.error_description''',
      );
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user._id''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.first_name''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.last_name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? countryId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.country._id''',
      ));
  String? countryName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.country.name''',
      ));
  int? typeUser(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.type_user''',
      ));
  int? score(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.score''',
      ));
  String? scoreName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.nivel''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access.access_token''',
      ));
  String? refreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access.refresh_token''',
      ));
  int? expireIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.access.expires_in''',
      ));
  int? refreshExpireIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.access.refresh_expires_in''',
      ));
}

class AuthCreateUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? phone = '',
    String? firstName = '',
    String? lastName = '',
    String? country = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "last_name": "${lastName}",
  "first_name": "${firstName}",
  "phone": "${phone}",
  "country": "${country}",
  "password": "${password}",
  "term": true,
  "lgpd": true,
  "type": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Auth Create User',
      apiUrl: '${MekaGroup.baseUrl}/users',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.user.first_name''',
      );
  dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.user.last_name''',
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.user.phone''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.user.email''',
      );
  dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.user.country''',
      );
  dynamic typeUser(dynamic response) => getJsonField(
        response,
        r'''$.user.type_user''',
      );
  dynamic score(dynamic response) => getJsonField(
        response,
        r'''$.user.score''',
      );
  dynamic scoreName(dynamic response) => getJsonField(
        response,
        r'''$.user.nivel''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.user._id''',
      );
  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.access.access_token''',
      );
  dynamic expireIn(dynamic response) => getJsonField(
        response,
        r'''$.access.expires_in''',
      );
  dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.access.refresh_token''',
      );
}

class BannerClienteCall {
  Future<ApiCallResponse> call({
    String? location = '',
  }) async {
    final ffApiRequestBody = '''
{
  "location": "${location}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Banner Cliente',
      apiUrl: '${MekaGroup.baseUrl}/banners/ff/client',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModelosPorBrandCall {
  Future<ApiCallResponse> call({
    String? brandId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Modelos por Brand',
      apiUrl: '${MekaGroup.baseUrl}/tables/models/brand/${brandId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'brandId': brandId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:]._id''',
        true,
      ) as List?;
  List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
}

class BrandsPorVehiculoCall {
  Future<ApiCallResponse> call({
    String? typeId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Brands por Vehiculo',
      apiUrl: '${MekaGroup.baseUrl}/tables/brands/type/${typeId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'typeId': typeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:]._id''',
        true,
      ) as List?;
  List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
}

class UploadStorageCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? photo,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Upload Storage',
      apiUrl: '${MekaGroup.baseUrl}/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'photo': photo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ConditionsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Conditions',
      apiUrl: '${MekaGroup.baseUrl}/tables/conditions',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$[:]._id''',
        true,
      ) as List?;
  List? name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
}

class CompanyByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Company By Id',
      apiUrl: '${MekaGroup.baseUrl}/companies/ff/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  double? lat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.latitude''',
      ));
  double? lng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.longitude''',
      ));
  String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address''',
      ));
  String? typeCompany(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.typeCompany''',
      ));
  int? score(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.score''',
      ));
  String? nivel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nivel''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  List? categories(dynamic response) => getJsonField(
        response,
        r'''$.categories''',
        true,
      ) as List?;
  List? payment(dynamic response) => getJsonField(
        response,
        r'''$.payment''',
        true,
      ) as List?;
}

class TipoCompaniasCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Tipo Companias',
      apiUrl: '${MekaGroup.baseUrl}/tables/type-companies',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class UserByIdCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'user By Id',
      apiUrl: '${MekaGroup.baseUrl}/users/${uid}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    String? firstName = '',
    String? lastName = '',
    String? phone = '',
    String? email = '',
    String? country = '',
    String? language = '',
    String? picture = '',
  }) async {
    final ffApiRequestBody = '''
{
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "phone": "${phone}",
  "email": "${email}",
  "country": "${country}",
  "picture": "${picture}",
  "language": "${language}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User',
      apiUrl: '${MekaGroup.baseUrl}/users/${uid}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Meka Group Code

/// Start Meka Services Group Code

class MekaServicesGroup {
  static String baseUrl = 'https://api.meka.do/api/v2';
  static Map<String, String> headers = {};
  static ActiveServiceCall activeServiceCall = ActiveServiceCall();
  static ServicesByStatusCall servicesByStatusCall = ServicesByStatusCall();
  static EnviarComentariosCall enviarComentariosCall = EnviarComentariosCall();
  static ServiceUpdateCall serviceUpdateCall = ServiceUpdateCall();
  static CrearServicioCall crearServicioCall = CrearServicioCall();
  static ProveedoresPorServicioCall proveedoresPorServicioCall =
      ProveedoresPorServicioCall();
  static ProviderCall providerCall = ProviderCall();
}

class ActiveServiceCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Active Service',
      apiUrl: '${MekaServicesGroup.baseUrl}/services/ff/active/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._id''',
      ));
  dynamic active(dynamic response) => getJsonField(
        response,
        r'''$.active''',
      );
}

class ServicesByStatusCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Services By Status',
      apiUrl:
          '${MekaServicesGroup.baseUrl}/services/user/${userId}/status/${status}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EnviarComentariosCall {
  Future<ApiCallResponse> call({
    String? id = '',
    int? scoreCompany,
    String? commentCompany = '',
  }) async {
    final ffApiRequestBody = '''
{
  "score_company": "${scoreCompany}",
  "comment_company": "${commentCompany}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar Comentarios',
      apiUrl: '${MekaServicesGroup.baseUrl}/comments/${id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ServiceUpdateCall {
  Future<ApiCallResponse> call({
    String? status = '',
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "status": "${status}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Service Update ',
      apiUrl: '${MekaServicesGroup.baseUrl}/services/${id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$._id''',
      );
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class CrearServicioCall {
  Future<ApiCallResponse> call({
    int? year,
    String? description = '',
    String? category = '',
    String? vehicle = '',
    String? brand = '',
    String? model = '',
    String? user = '',
    double? latitude,
    List<String>? photosList,
    double? longitude,
    int? type,
  }) async {
    final photos = _serializeList(photosList);

    final ffApiRequestBody = '''
{
  "type": ${type},
  "year": "${year}",
  "pictures": ${photos},
  "latitude": ${latitude},
  "longitude": ${longitude},
  "user": "${user}",
  "brand": "${brand}",
  "model": "${model}",
  "vehicle": "${vehicle}",
  "category": "${category}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Crear Servicio',
      apiUrl: '${MekaServicesGroup.baseUrl}/services/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._id''',
      ));
}

class ProveedoresPorServicioCall {
  Future<ApiCallResponse> call({
    int? type,
    String? category = '',
    String? service = '',
    String? position = '',
    String? order = '',
  }) async {
    final ffApiRequestBody = '''
{
  "type": ${type},
  "category": "${category}",
  "position": "${position}",
  "service": "${service}",
  "order": "${order}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Proveedores por servicio',
      apiUrl: '${MekaServicesGroup.baseUrl}/companies/ff/provider',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? lat(dynamic response) => (getJsonField(
        response,
        r'''$[:].latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? lng(dynamic response) => (getJsonField(
        response,
        r'''$[:].longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? score(dynamic response) => (getJsonField(
        response,
        r'''$[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? nivel(dynamic response) => (getJsonField(
        response,
        r'''$[:].nivel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? address(dynamic response) => (getJsonField(
        response,
        r'''$[:].address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? last(dynamic response) => (getJsonField(
        response,
        r'''$[:].lastConnection''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? distance(dynamic response) => (getJsonField(
        response,
        r'''$[:].distance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? distance2(dynamic response) => (getJsonField(
        response,
        r'''$[:].distance2''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ProviderCall {
  Future<ApiCallResponse> call({
    String? service = '',
    String? position = '',
    String? category = '6439b69539e3aaee8e85ed03',
  }) async {
    final ffApiRequestBody = '''
{
  "service": "${service}",
  "position": "${position}",
  "category": "${category}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Provider',
      apiUrl: '${MekaServicesGroup.baseUrl}/companies/ff/provider',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Meka Services Group Code

/// Start Meka LT Group Code

class MekaLTGroup {
  static String baseUrl = 'https://api.meka.do/api/v2';
  static Map<String, String> headers = {};
  static ServiciosActivosCall serviciosActivosCall = ServiciosActivosCall();
  static ServicioPorIDCall servicioPorIDCall = ServicioPorIDCall();
  static CrearComentarioCall crearComentarioCall = CrearComentarioCall();
  static GetCompanyByUserCall getCompanyByUserCall = GetCompanyByUserCall();
  static CreateCompanyCall createCompanyCall = CreateCompanyCall();
  static FueraDeLineaCall fueraDeLineaCall = FueraDeLineaCall();
}

class ServiciosActivosCall {
  Future<ApiCallResponse> call({
    String? company = '',
    String? status = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Servicios Activos',
      apiUrl: '${MekaLTGroup.baseUrl}/services/${company}/status/${status}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ServicioPorIDCall {
  Future<ApiCallResponse> call({
    String? serviceId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Servicio por ID',
      apiUrl: '${MekaLTGroup.baseUrl}/services/${serviceId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CrearComentarioCall {
  Future<ApiCallResponse> call({
    String? serviceId = '',
    String? userId = '',
    String? comment = '',
    int? score,
    String? companyId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "service": "${serviceId}",
  "comment_customer": "${comment}",
  "company": "${companyId}",
  "user": "${userId}",
  "score_customer": ${score}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Crear Comentario',
      apiUrl: '${MekaLTGroup.baseUrl}/commets',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCompanyByUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get Company by User',
      apiUrl: '${MekaLTGroup.baseUrl}/companies/ff/user/${userId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  bool? active(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.active''',
      ));
}

class CreateCompanyCall {
  Future<ApiCallResponse> call({
    String? typeCompany = '',
    String? user = '',
    List<String>? categoriesList,
    List<String>? paymentList,
    String? address = '',
    String? name = '',
    double? lat,
    double? lng,
  }) async {
    final categories = _serializeList(categoriesList);
    final payment = _serializeList(paymentList);

    final ffApiRequestBody = '''
{
  "typeCompany": "${typeCompany}",
  "user": "${user}",
  "categories": ${categories},
  "latitude": ${lat},
  "name": "${name}",
  "longitude": ${lng},
  "address": "${address}",
  "payment": ${payment}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Company',
      apiUrl: '${MekaLTGroup.baseUrl}/companies',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FueraDeLineaCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    bool? status,
  }) async {
    final ffApiRequestBody = '''
{
  "status": ${status}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fuera de Linea',
      apiUrl: '${MekaLTGroup.baseUrl}/companies/${uid}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Meka LT Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
