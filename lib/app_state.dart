import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _bookMarkedJobs = prefs
              .getStringList('ff_bookMarkedJobs')
              ?.map((path) => path.ref)
              .toList() ??
          _bookMarkedJobs;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _showSubMenu = false;
  bool get showSubMenu => _showSubMenu;
  set showSubMenu(bool value) {
    _showSubMenu = value;
  }

  List<DocumentReference> _bookMarkedJobs = [];
  List<DocumentReference> get bookMarkedJobs => _bookMarkedJobs;
  set bookMarkedJobs(List<DocumentReference> value) {
    _bookMarkedJobs = value;
    prefs.setStringList('ff_bookMarkedJobs', value.map((x) => x.path).toList());
  }

  void addToBookMarkedJobs(DocumentReference value) {
    bookMarkedJobs.add(value);
    prefs.setStringList(
        'ff_bookMarkedJobs', _bookMarkedJobs.map((x) => x.path).toList());
  }

  void removeFromBookMarkedJobs(DocumentReference value) {
    bookMarkedJobs.remove(value);
    prefs.setStringList(
        'ff_bookMarkedJobs', _bookMarkedJobs.map((x) => x.path).toList());
  }

  void removeAtIndexFromBookMarkedJobs(int index) {
    bookMarkedJobs.removeAt(index);
    prefs.setStringList(
        'ff_bookMarkedJobs', _bookMarkedJobs.map((x) => x.path).toList());
  }

  void updateBookMarkedJobsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    bookMarkedJobs[index] = updateFn(_bookMarkedJobs[index]);
    prefs.setStringList(
        'ff_bookMarkedJobs', _bookMarkedJobs.map((x) => x.path).toList());
  }

  void insertAtIndexInBookMarkedJobs(int index, DocumentReference value) {
    bookMarkedJobs.insert(index, value);
    prefs.setStringList(
        'ff_bookMarkedJobs', _bookMarkedJobs.map((x) => x.path).toList());
  }

  String _htmlContent = '';
  String get htmlContent => _htmlContent;
  set htmlContent(String value) {
    _htmlContent = value;
  }

  bool _isNavBarVisible = true;
  bool get isNavBarVisible => _isNavBarVisible;
  set isNavBarVisible(bool value) {
    _isNavBarVisible = value;
  }

  final _categoriesManager = FutureRequestManager<List<JobCategoriesRecord>>();
  Future<List<JobCategoriesRecord>> categories({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<JobCategoriesRecord>> Function() requestFn,
  }) =>
      _categoriesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCategoriesCache() => _categoriesManager.clear();
  void clearCategoriesCacheKey(String? uniqueKey) =>
      _categoriesManager.clearRequest(uniqueKey);

  final _usersManager = StreamRequestManager<List<UsersRecord>>();
  Stream<List<UsersRecord>> users({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<UsersRecord>> Function() requestFn,
  }) =>
      _usersManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUsersCache() => _usersManager.clear();
  void clearUsersCacheKey(String? uniqueKey) =>
      _usersManager.clearRequest(uniqueKey);
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
