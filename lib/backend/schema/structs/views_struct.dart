// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ViewsStruct extends FFFirebaseStruct {
  ViewsStruct({
    int? day,
    int? numberOfViews,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _day = day,
        _numberOfViews = numberOfViews,
        super(firestoreUtilData);

  // "day" field.
  int? _day;
  int get day => _day ?? 0;
  set day(int? val) => _day = val;

  void incrementDay(int amount) => day = day + amount;

  bool hasDay() => _day != null;

  // "numberOfViews" field.
  int? _numberOfViews;
  int get numberOfViews => _numberOfViews ?? 0;
  set numberOfViews(int? val) => _numberOfViews = val;

  void incrementNumberOfViews(int amount) =>
      numberOfViews = numberOfViews + amount;

  bool hasNumberOfViews() => _numberOfViews != null;

  static ViewsStruct fromMap(Map<String, dynamic> data) => ViewsStruct(
        day: castToType<int>(data['day']),
        numberOfViews: castToType<int>(data['numberOfViews']),
      );

  static ViewsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ViewsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'day': _day,
        'numberOfViews': _numberOfViews,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'day': serializeParam(
          _day,
          ParamType.int,
        ),
        'numberOfViews': serializeParam(
          _numberOfViews,
          ParamType.int,
        ),
      }.withoutNulls;

  static ViewsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ViewsStruct(
        day: deserializeParam(
          data['day'],
          ParamType.int,
          false,
        ),
        numberOfViews: deserializeParam(
          data['numberOfViews'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ViewsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ViewsStruct &&
        day == other.day &&
        numberOfViews == other.numberOfViews;
  }

  @override
  int get hashCode => const ListEquality().hash([day, numberOfViews]);
}

ViewsStruct createViewsStruct({
  int? day,
  int? numberOfViews,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ViewsStruct(
      day: day,
      numberOfViews: numberOfViews,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ViewsStruct? updateViewsStruct(
  ViewsStruct? views, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    views
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addViewsStructData(
  Map<String, dynamic> firestoreData,
  ViewsStruct? views,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (views == null) {
    return;
  }
  if (views.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && views.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final viewsData = getViewsFirestoreData(views, forFieldValue);
  final nestedData = viewsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = views.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getViewsFirestoreData(
  ViewsStruct? views, [
  bool forFieldValue = false,
]) {
  if (views == null) {
    return {};
  }
  final firestoreData = mapToFirestore(views.toMap());

  // Add any Firestore field values
  views.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getViewsListFirestoreData(
  List<ViewsStruct>? viewss,
) =>
    viewss?.map((e) => getViewsFirestoreData(e, true)).toList() ?? [];
