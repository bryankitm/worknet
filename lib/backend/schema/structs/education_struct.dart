// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EducationStruct extends FFFirebaseStruct {
  EducationStruct({
    String? institutionName,
    String? qualificationLevel,
    String? qualificationName,
    DateTime? startDate,
    DateTime? endDate,
    bool? stillStudying,
    String? description,
    String? country,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _institutionName = institutionName,
        _qualificationLevel = qualificationLevel,
        _qualificationName = qualificationName,
        _startDate = startDate,
        _endDate = endDate,
        _stillStudying = stillStudying,
        _description = description,
        _country = country,
        super(firestoreUtilData);

  // "institution_name" field.
  String? _institutionName;
  String get institutionName => _institutionName ?? '';
  set institutionName(String? val) => _institutionName = val;

  bool hasInstitutionName() => _institutionName != null;

  // "qualification_level" field.
  String? _qualificationLevel;
  String get qualificationLevel => _qualificationLevel ?? '';
  set qualificationLevel(String? val) => _qualificationLevel = val;

  bool hasQualificationLevel() => _qualificationLevel != null;

  // "qualification_name" field.
  String? _qualificationName;
  String get qualificationName => _qualificationName ?? '';
  set qualificationName(String? val) => _qualificationName = val;

  bool hasQualificationName() => _qualificationName != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "still_studying" field.
  bool? _stillStudying;
  bool get stillStudying => _stillStudying ?? false;
  set stillStudying(bool? val) => _stillStudying = val;

  bool hasStillStudying() => _stillStudying != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  static EducationStruct fromMap(Map<String, dynamic> data) => EducationStruct(
        institutionName: data['institution_name'] as String?,
        qualificationLevel: data['qualification_level'] as String?,
        qualificationName: data['qualification_name'] as String?,
        startDate: data['start_date'] as DateTime?,
        endDate: data['end_date'] as DateTime?,
        stillStudying: data['still_studying'] as bool?,
        description: data['description'] as String?,
        country: data['country'] as String?,
      );

  static EducationStruct? maybeFromMap(dynamic data) => data is Map
      ? EducationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'institution_name': _institutionName,
        'qualification_level': _qualificationLevel,
        'qualification_name': _qualificationName,
        'start_date': _startDate,
        'end_date': _endDate,
        'still_studying': _stillStudying,
        'description': _description,
        'country': _country,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'institution_name': serializeParam(
          _institutionName,
          ParamType.String,
        ),
        'qualification_level': serializeParam(
          _qualificationLevel,
          ParamType.String,
        ),
        'qualification_name': serializeParam(
          _qualificationName,
          ParamType.String,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'still_studying': serializeParam(
          _stillStudying,
          ParamType.bool,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
      }.withoutNulls;

  static EducationStruct fromSerializableMap(Map<String, dynamic> data) =>
      EducationStruct(
        institutionName: deserializeParam(
          data['institution_name'],
          ParamType.String,
          false,
        ),
        qualificationLevel: deserializeParam(
          data['qualification_level'],
          ParamType.String,
          false,
        ),
        qualificationName: deserializeParam(
          data['qualification_name'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.DateTime,
          false,
        ),
        stillStudying: deserializeParam(
          data['still_studying'],
          ParamType.bool,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EducationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EducationStruct &&
        institutionName == other.institutionName &&
        qualificationLevel == other.qualificationLevel &&
        qualificationName == other.qualificationName &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        stillStudying == other.stillStudying &&
        description == other.description &&
        country == other.country;
  }

  @override
  int get hashCode => const ListEquality().hash([
        institutionName,
        qualificationLevel,
        qualificationName,
        startDate,
        endDate,
        stillStudying,
        description,
        country
      ]);
}

EducationStruct createEducationStruct({
  String? institutionName,
  String? qualificationLevel,
  String? qualificationName,
  DateTime? startDate,
  DateTime? endDate,
  bool? stillStudying,
  String? description,
  String? country,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EducationStruct(
      institutionName: institutionName,
      qualificationLevel: qualificationLevel,
      qualificationName: qualificationName,
      startDate: startDate,
      endDate: endDate,
      stillStudying: stillStudying,
      description: description,
      country: country,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EducationStruct? updateEducationStruct(
  EducationStruct? education, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    education
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEducationStructData(
  Map<String, dynamic> firestoreData,
  EducationStruct? education,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (education == null) {
    return;
  }
  if (education.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && education.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final educationData = getEducationFirestoreData(education, forFieldValue);
  final nestedData = educationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = education.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEducationFirestoreData(
  EducationStruct? education, [
  bool forFieldValue = false,
]) {
  if (education == null) {
    return {};
  }
  final firestoreData = mapToFirestore(education.toMap());

  // Add any Firestore field values
  education.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEducationListFirestoreData(
  List<EducationStruct>? educations,
) =>
    educations?.map((e) => getEducationFirestoreData(e, true)).toList() ?? [];
