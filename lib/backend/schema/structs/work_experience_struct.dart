// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WorkExperienceStruct extends FFFirebaseStruct {
  WorkExperienceStruct({
    String? employerName,
    String? jobTitle,
    String? jobLevel,
    String? country,
    String? monthlySalary,
    String? workType,
    DateTime? endDate,
    DateTime? startDate,
    bool? currentlyWorking,
    String? jobResponsibilities,
    String? jobCategory,
    String? subCategory,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _employerName = employerName,
        _jobTitle = jobTitle,
        _jobLevel = jobLevel,
        _country = country,
        _monthlySalary = monthlySalary,
        _workType = workType,
        _endDate = endDate,
        _startDate = startDate,
        _currentlyWorking = currentlyWorking,
        _jobResponsibilities = jobResponsibilities,
        _jobCategory = jobCategory,
        _subCategory = subCategory,
        super(firestoreUtilData);

  // "employer_name" field.
  String? _employerName;
  String get employerName => _employerName ?? '';
  set employerName(String? val) => _employerName = val;

  bool hasEmployerName() => _employerName != null;

  // "job_title" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  set jobTitle(String? val) => _jobTitle = val;

  bool hasJobTitle() => _jobTitle != null;

  // "job_level" field.
  String? _jobLevel;
  String get jobLevel => _jobLevel ?? '';
  set jobLevel(String? val) => _jobLevel = val;

  bool hasJobLevel() => _jobLevel != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "monthly_salary" field.
  String? _monthlySalary;
  String get monthlySalary => _monthlySalary ?? '';
  set monthlySalary(String? val) => _monthlySalary = val;

  bool hasMonthlySalary() => _monthlySalary != null;

  // "work_type" field.
  String? _workType;
  String get workType => _workType ?? '';
  set workType(String? val) => _workType = val;

  bool hasWorkType() => _workType != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "currently_working" field.
  bool? _currentlyWorking;
  bool get currentlyWorking => _currentlyWorking ?? false;
  set currentlyWorking(bool? val) => _currentlyWorking = val;

  bool hasCurrentlyWorking() => _currentlyWorking != null;

  // "job_responsibilities" field.
  String? _jobResponsibilities;
  String get jobResponsibilities => _jobResponsibilities ?? '';
  set jobResponsibilities(String? val) => _jobResponsibilities = val;

  bool hasJobResponsibilities() => _jobResponsibilities != null;

  // "job_category" field.
  String? _jobCategory;
  String get jobCategory => _jobCategory ?? '';
  set jobCategory(String? val) => _jobCategory = val;

  bool hasJobCategory() => _jobCategory != null;

  // "sub_category" field.
  String? _subCategory;
  String get subCategory => _subCategory ?? '';
  set subCategory(String? val) => _subCategory = val;

  bool hasSubCategory() => _subCategory != null;

  static WorkExperienceStruct fromMap(Map<String, dynamic> data) =>
      WorkExperienceStruct(
        employerName: data['employer_name'] as String?,
        jobTitle: data['job_title'] as String?,
        jobLevel: data['job_level'] as String?,
        country: data['country'] as String?,
        monthlySalary: data['monthly_salary'] as String?,
        workType: data['work_type'] as String?,
        endDate: data['end_date'] as DateTime?,
        startDate: data['start_date'] as DateTime?,
        currentlyWorking: data['currently_working'] as bool?,
        jobResponsibilities: data['job_responsibilities'] as String?,
        jobCategory: data['job_category'] as String?,
        subCategory: data['sub_category'] as String?,
      );

  static WorkExperienceStruct? maybeFromMap(dynamic data) => data is Map
      ? WorkExperienceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'employer_name': _employerName,
        'job_title': _jobTitle,
        'job_level': _jobLevel,
        'country': _country,
        'monthly_salary': _monthlySalary,
        'work_type': _workType,
        'end_date': _endDate,
        'start_date': _startDate,
        'currently_working': _currentlyWorking,
        'job_responsibilities': _jobResponsibilities,
        'job_category': _jobCategory,
        'sub_category': _subCategory,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'employer_name': serializeParam(
          _employerName,
          ParamType.String,
        ),
        'job_title': serializeParam(
          _jobTitle,
          ParamType.String,
        ),
        'job_level': serializeParam(
          _jobLevel,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'monthly_salary': serializeParam(
          _monthlySalary,
          ParamType.String,
        ),
        'work_type': serializeParam(
          _workType,
          ParamType.String,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'currently_working': serializeParam(
          _currentlyWorking,
          ParamType.bool,
        ),
        'job_responsibilities': serializeParam(
          _jobResponsibilities,
          ParamType.String,
        ),
        'job_category': serializeParam(
          _jobCategory,
          ParamType.String,
        ),
        'sub_category': serializeParam(
          _subCategory,
          ParamType.String,
        ),
      }.withoutNulls;

  static WorkExperienceStruct fromSerializableMap(Map<String, dynamic> data) =>
      WorkExperienceStruct(
        employerName: deserializeParam(
          data['employer_name'],
          ParamType.String,
          false,
        ),
        jobTitle: deserializeParam(
          data['job_title'],
          ParamType.String,
          false,
        ),
        jobLevel: deserializeParam(
          data['job_level'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        monthlySalary: deserializeParam(
          data['monthly_salary'],
          ParamType.String,
          false,
        ),
        workType: deserializeParam(
          data['work_type'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.DateTime,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        currentlyWorking: deserializeParam(
          data['currently_working'],
          ParamType.bool,
          false,
        ),
        jobResponsibilities: deserializeParam(
          data['job_responsibilities'],
          ParamType.String,
          false,
        ),
        jobCategory: deserializeParam(
          data['job_category'],
          ParamType.String,
          false,
        ),
        subCategory: deserializeParam(
          data['sub_category'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WorkExperienceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WorkExperienceStruct &&
        employerName == other.employerName &&
        jobTitle == other.jobTitle &&
        jobLevel == other.jobLevel &&
        country == other.country &&
        monthlySalary == other.monthlySalary &&
        workType == other.workType &&
        endDate == other.endDate &&
        startDate == other.startDate &&
        currentlyWorking == other.currentlyWorking &&
        jobResponsibilities == other.jobResponsibilities &&
        jobCategory == other.jobCategory &&
        subCategory == other.subCategory;
  }

  @override
  int get hashCode => const ListEquality().hash([
        employerName,
        jobTitle,
        jobLevel,
        country,
        monthlySalary,
        workType,
        endDate,
        startDate,
        currentlyWorking,
        jobResponsibilities,
        jobCategory,
        subCategory
      ]);
}

WorkExperienceStruct createWorkExperienceStruct({
  String? employerName,
  String? jobTitle,
  String? jobLevel,
  String? country,
  String? monthlySalary,
  String? workType,
  DateTime? endDate,
  DateTime? startDate,
  bool? currentlyWorking,
  String? jobResponsibilities,
  String? jobCategory,
  String? subCategory,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WorkExperienceStruct(
      employerName: employerName,
      jobTitle: jobTitle,
      jobLevel: jobLevel,
      country: country,
      monthlySalary: monthlySalary,
      workType: workType,
      endDate: endDate,
      startDate: startDate,
      currentlyWorking: currentlyWorking,
      jobResponsibilities: jobResponsibilities,
      jobCategory: jobCategory,
      subCategory: subCategory,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WorkExperienceStruct? updateWorkExperienceStruct(
  WorkExperienceStruct? workExperience, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    workExperience
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWorkExperienceStructData(
  Map<String, dynamic> firestoreData,
  WorkExperienceStruct? workExperience,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (workExperience == null) {
    return;
  }
  if (workExperience.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && workExperience.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final workExperienceData =
      getWorkExperienceFirestoreData(workExperience, forFieldValue);
  final nestedData =
      workExperienceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = workExperience.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWorkExperienceFirestoreData(
  WorkExperienceStruct? workExperience, [
  bool forFieldValue = false,
]) {
  if (workExperience == null) {
    return {};
  }
  final firestoreData = mapToFirestore(workExperience.toMap());

  // Add any Firestore field values
  workExperience.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWorkExperienceListFirestoreData(
  List<WorkExperienceStruct>? workExperiences,
) =>
    workExperiences
        ?.map((e) => getWorkExperienceFirestoreData(e, true))
        .toList() ??
    [];
