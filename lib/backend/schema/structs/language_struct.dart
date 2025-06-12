// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LanguageStruct extends FFFirebaseStruct {
  LanguageStruct({
    String? language,
    String? proficiency,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _language = language,
        _proficiency = proficiency,
        super(firestoreUtilData);

  // "Language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;

  bool hasLanguage() => _language != null;

  // "Proficiency" field.
  String? _proficiency;
  String get proficiency => _proficiency ?? '';
  set proficiency(String? val) => _proficiency = val;

  bool hasProficiency() => _proficiency != null;

  static LanguageStruct fromMap(Map<String, dynamic> data) => LanguageStruct(
        language: data['Language'] as String?,
        proficiency: data['Proficiency'] as String?,
      );

  static LanguageStruct? maybeFromMap(dynamic data) =>
      data is Map ? LanguageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Language': _language,
        'Proficiency': _proficiency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Language': serializeParam(
          _language,
          ParamType.String,
        ),
        'Proficiency': serializeParam(
          _proficiency,
          ParamType.String,
        ),
      }.withoutNulls;

  static LanguageStruct fromSerializableMap(Map<String, dynamic> data) =>
      LanguageStruct(
        language: deserializeParam(
          data['Language'],
          ParamType.String,
          false,
        ),
        proficiency: deserializeParam(
          data['Proficiency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LanguageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LanguageStruct &&
        language == other.language &&
        proficiency == other.proficiency;
  }

  @override
  int get hashCode => const ListEquality().hash([language, proficiency]);
}

LanguageStruct createLanguageStruct({
  String? language,
  String? proficiency,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LanguageStruct(
      language: language,
      proficiency: proficiency,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LanguageStruct? updateLanguageStruct(
  LanguageStruct? languageStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    languageStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLanguageStructData(
  Map<String, dynamic> firestoreData,
  LanguageStruct? languageStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (languageStruct == null) {
    return;
  }
  if (languageStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && languageStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final languageStructData =
      getLanguageFirestoreData(languageStruct, forFieldValue);
  final nestedData =
      languageStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = languageStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLanguageFirestoreData(
  LanguageStruct? languageStruct, [
  bool forFieldValue = false,
]) {
  if (languageStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(languageStruct.toMap());

  // Add any Firestore field values
  languageStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLanguageListFirestoreData(
  List<LanguageStruct>? languageStructs,
) =>
    languageStructs?.map((e) => getLanguageFirestoreData(e, true)).toList() ??
    [];
