import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _ltCreateCompany =
          await secureStorage.getBool('ff_ltCreateCompany') ?? _ltCreateCompany;
    });
    await _safeInitAsync(() async {
      _ltActive = await secureStorage.getBool('ff_ltActive') ?? _ltActive;
    });
    await _safeInitAsync(() async {
      _ffPushKey = await secureStorage.getString('ff_ffPushKey') ?? _ffPushKey;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_ltCompany') != null) {
        try {
          _ltCompany =
              jsonDecode(await secureStorage.getString('ff_ltCompany') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _photoList = [];
  List<String> get photoList => _photoList;
  set photoList(List<String> _value) {
    _photoList = _value;
  }

  void addToPhotoList(String _value) {
    _photoList.add(_value);
  }

  void removeFromPhotoList(String _value) {
    _photoList.remove(_value);
  }

  void removeAtIndexFromPhotoList(int _index) {
    _photoList.removeAt(_index);
  }

  void updatePhotoListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _photoList[_index] = updateFn(_photoList[_index]);
  }

  void insertAtIndexInPhotoList(int _index, String _value) {
    _photoList.insert(_index, _value);
  }

  bool _ltCreateCompany = true;
  bool get ltCreateCompany => _ltCreateCompany;
  set ltCreateCompany(bool _value) {
    _ltCreateCompany = _value;
    secureStorage.setBool('ff_ltCreateCompany', _value);
  }

  void deleteLtCreateCompany() {
    secureStorage.delete(key: 'ff_ltCreateCompany');
  }

  LatLng? _ltPosition;
  LatLng? get ltPosition => _ltPosition;
  set ltPosition(LatLng? _value) {
    _ltPosition = _value;
  }

  String _ltPositionAddress = '';
  String get ltPositionAddress => _ltPositionAddress;
  set ltPositionAddress(String _value) {
    _ltPositionAddress = _value;
  }

  bool _ltActive = true;
  bool get ltActive => _ltActive;
  set ltActive(bool _value) {
    _ltActive = _value;
    secureStorage.setBool('ff_ltActive', _value);
  }

  void deleteLtActive() {
    secureStorage.delete(key: 'ff_ltActive');
  }

  List<dynamic> _serviceForAccepted = [];
  List<dynamic> get serviceForAccepted => _serviceForAccepted;
  set serviceForAccepted(List<dynamic> _value) {
    _serviceForAccepted = _value;
  }

  void addToServiceForAccepted(dynamic _value) {
    _serviceForAccepted.add(_value);
  }

  void removeFromServiceForAccepted(dynamic _value) {
    _serviceForAccepted.remove(_value);
  }

  void removeAtIndexFromServiceForAccepted(int _index) {
    _serviceForAccepted.removeAt(_index);
  }

  void updateServiceForAcceptedAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _serviceForAccepted[_index] = updateFn(_serviceForAccepted[_index]);
  }

  void insertAtIndexInServiceForAccepted(int _index, dynamic _value) {
    _serviceForAccepted.insert(_index, _value);
  }

  List<dynamic> _serviceActive = [];
  List<dynamic> get serviceActive => _serviceActive;
  set serviceActive(List<dynamic> _value) {
    _serviceActive = _value;
  }

  void addToServiceActive(dynamic _value) {
    _serviceActive.add(_value);
  }

  void removeFromServiceActive(dynamic _value) {
    _serviceActive.remove(_value);
  }

  void removeAtIndexFromServiceActive(int _index) {
    _serviceActive.removeAt(_index);
  }

  void updateServiceActiveAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _serviceActive[_index] = updateFn(_serviceActive[_index]);
  }

  void insertAtIndexInServiceActive(int _index, dynamic _value) {
    _serviceActive.insert(_index, _value);
  }

  String _ffPushKey = '';
  String get ffPushKey => _ffPushKey;
  set ffPushKey(String _value) {
    _ffPushKey = _value;
    secureStorage.setString('ff_ffPushKey', _value);
  }

  void deleteFfPushKey() {
    secureStorage.delete(key: 'ff_ffPushKey');
  }

  dynamic _ltCompany;
  dynamic get ltCompany => _ltCompany;
  set ltCompany(dynamic _value) {
    _ltCompany = _value;
    secureStorage.setString('ff_ltCompany', jsonEncode(_value));
  }

  void deleteLtCompany() {
    secureStorage.delete(key: 'ff_ltCompany');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
