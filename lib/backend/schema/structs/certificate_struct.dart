// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CertificateStruct extends FFFirebaseStruct {
  CertificateStruct({
    String? title,
    String? type,
    String? yearReceived,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _type = type,
        _yearReceived = yearReceived,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "year_received" field.
  String? _yearReceived;
  String get yearReceived => _yearReceived ?? '';
  set yearReceived(String? val) => _yearReceived = val;

  bool hasYearReceived() => _yearReceived != null;

  static CertificateStruct fromMap(Map<String, dynamic> data) =>
      CertificateStruct(
        title: data['title'] as String?,
        type: data['type'] as String?,
        yearReceived: data['year_received'] as String?,
      );

  static CertificateStruct? maybeFromMap(dynamic data) => data is Map
      ? CertificateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'type': _type,
        'year_received': _yearReceived,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'year_received': serializeParam(
          _yearReceived,
          ParamType.String,
        ),
      }.withoutNulls;

  static CertificateStruct fromSerializableMap(Map<String, dynamic> data) =>
      CertificateStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        yearReceived: deserializeParam(
          data['year_received'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CertificateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CertificateStruct &&
        title == other.title &&
        type == other.type &&
        yearReceived == other.yearReceived;
  }

  @override
  int get hashCode => const ListEquality().hash([title, type, yearReceived]);
}

CertificateStruct createCertificateStruct({
  String? title,
  String? type,
  String? yearReceived,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CertificateStruct(
      title: title,
      type: type,
      yearReceived: yearReceived,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CertificateStruct? updateCertificateStruct(
  CertificateStruct? certificate, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    certificate
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCertificateStructData(
  Map<String, dynamic> firestoreData,
  CertificateStruct? certificate,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (certificate == null) {
    return;
  }
  if (certificate.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && certificate.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final certificateData =
      getCertificateFirestoreData(certificate, forFieldValue);
  final nestedData =
      certificateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = certificate.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCertificateFirestoreData(
  CertificateStruct? certificate, [
  bool forFieldValue = false,
]) {
  if (certificate == null) {
    return {};
  }
  final firestoreData = mapToFirestore(certificate.toMap());

  // Add any Firestore field values
  certificate.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCertificateListFirestoreData(
  List<CertificateStruct>? certificates,
) =>
    certificates?.map((e) => getCertificateFirestoreData(e, true)).toList() ??
    [];
