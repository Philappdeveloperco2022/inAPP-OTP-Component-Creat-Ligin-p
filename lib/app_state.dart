import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _OTP = prefs.getInt('ff_OTP') ?? _OTP;
    _USerID = prefs.getString('ff_USerID') ?? _USerID;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _OTP = 0;
  int get OTP => _OTP;
  set OTP(int _value) {
    _OTP = _value;
    prefs.setInt('ff_OTP', _value);
  }

  String _USerID = '';
  String get USerID => _USerID;
  set USerID(String _value) {
    _USerID = _value;
    prefs.setString('ff_USerID', _value);
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
