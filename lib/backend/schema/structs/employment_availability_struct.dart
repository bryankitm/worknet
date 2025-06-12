// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmploymentAvailabilityStruct extends FFFirebaseStruct {
  EmploymentAvailabilityStruct({
    String? headline,
    String? highestQualification,
    String? currentJobCategory,
    String? preferredJobCategory,
    String? experience,
    String? workType,
    String? salaryExpectation,
    List<String>? preference,
    String? photoUrl,
    String? availability,
    String? location,
    String? preferredJobLocation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _headline = headline,
        _highestQualification = highestQualification,
        _currentJobCategory = currentJobCategory,
        _preferredJobCategory = preferredJobCategory,
        _experience = experience,
        _workType = workType,
        _salaryExpectation = salaryExpectation,
        _preference = preference,
        _photoUrl = photoUrl,
        _availability = availability,
        _location = location,
        _preferredJobLocation = preferredJobLocation,
        super(firestoreUtilData);

  // "Headline" field.
  String? _headline;
  String get headline => _headline ?? '';
  set headline(String? val) => _headline = val;

  bool hasHeadline() => _headline != null;

  // "HighestQualification" field.
  String? _highestQualification;
  String get highestQualification => _highestQualification ?? '';
  set highestQualification(String? val) => _highestQualification = val;

  bool hasHighestQualification() => _highestQualification != null;

  // "CurrentJobCategory" field.
  String? _currentJobCategory;
  String get currentJobCategory => _currentJobCategory ?? '';
  set currentJobCategory(String? val) => _currentJobCategory = val;

  bool hasCurrentJobCategory() => _currentJobCategory != null;

  // "PreferredJobCategory" field.
  String? _preferredJobCategory;
  String get preferredJobCategory => _preferredJobCategory ?? '';
  set preferredJobCategory(String? val) => _preferredJobCategory = val;

  bool hasPreferredJobCategory() => _preferredJobCategory != null;

  // "Experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  set experience(String? val) => _experience = val;

  bool hasExperience() => _experience != null;

  // "WorkType" field.
  String? _workType;
  String get workType => _workType ?? '';
  set workType(String? val) => _workType = val;

  bool hasWorkType() => _workType != null;

  // "SalaryExpectation" field.
  String? _salaryExpectation;
  String get salaryExpectation => _salaryExpectation ?? '';
  set salaryExpectation(String? val) => _salaryExpectation = val;

  bool hasSalaryExpectation() => _salaryExpectation != null;

  // "Preference" field.
  List<String>? _preference;
  List<String> get preference => _preference ?? const [];
  set preference(List<String>? val) => _preference = val;

  void updatePreference(Function(List<String>) updateFn) {
    updateFn(_preference ??= []);
  }

  bool hasPreference() => _preference != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;

  bool hasPhotoUrl() => _photoUrl != null;

  // "Availability" field.
  String? _availability;
  String get availability => _availability ?? '';
  set availability(String? val) => _availability = val;

  bool hasAvailability() => _availability != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "PreferredJobLocation" field.
  String? _preferredJobLocation;
  String get preferredJobLocation => _preferredJobLocation ?? '';
  set preferredJobLocation(String? val) => _preferredJobLocation = val;

  bool hasPreferredJobLocation() => _preferredJobLocation != null;

  static EmploymentAvailabilityStruct fromMap(Map<String, dynamic> data) =>
      EmploymentAvailabilityStruct(
        headline: data['Headline'] as String?,
        highestQualification: data['HighestQualification'] as String?,
        currentJobCategory: data['CurrentJobCategory'] as String?,
        preferredJobCategory: data['PreferredJobCategory'] as String?,
        experience: data['Experience'] as String?,
        workType: data['WorkType'] as String?,
        salaryExpectation: data['SalaryExpectation'] as String?,
        preference: getDataList(data['Preference']),
        photoUrl: data['photo_url'] as String?,
        availability: data['Availability'] as String?,
        location: data['Location'] as String?,
        preferredJobLocation: data['PreferredJobLocation'] as String?,
      );

  static EmploymentAvailabilityStruct? maybeFromMap(dynamic data) => data is Map
      ? EmploymentAvailabilityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Headline': _headline,
        'HighestQualification': _highestQualification,
        'CurrentJobCategory': _currentJobCategory,
        'PreferredJobCategory': _preferredJobCategory,
        'Experience': _experience,
        'WorkType': _workType,
        'SalaryExpectation': _salaryExpectation,
        'Preference': _preference,
        'photo_url': _photoUrl,
        'Availability': _availability,
        'Location': _location,
        'PreferredJobLocation': _preferredJobLocation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Headline': serializeParam(
          _headline,
          ParamType.String,
        ),
        'HighestQualification': serializeParam(
          _highestQualification,
          ParamType.String,
        ),
        'CurrentJobCategory': serializeParam(
          _currentJobCategory,
          ParamType.String,
        ),
        'PreferredJobCategory': serializeParam(
          _preferredJobCategory,
          ParamType.String,
        ),
        'Experience': serializeParam(
          _experience,
          ParamType.String,
        ),
        'WorkType': serializeParam(
          _workType,
          ParamType.String,
        ),
        'SalaryExpectation': serializeParam(
          _salaryExpectation,
          ParamType.String,
        ),
        'Preference': serializeParam(
          _preference,
          ParamType.String,
          isList: true,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'Availability': serializeParam(
          _availability,
          ParamType.String,
        ),
        'Location': serializeParam(
          _location,
          ParamType.String,
        ),
        'PreferredJobLocation': serializeParam(
          _preferredJobLocation,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmploymentAvailabilityStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EmploymentAvailabilityStruct(
        headline: deserializeParam(
          data['Headline'],
          ParamType.String,
          false,
        ),
        highestQualification: deserializeParam(
          data['HighestQualification'],
          ParamType.String,
          false,
        ),
        currentJobCategory: deserializeParam(
          data['CurrentJobCategory'],
          ParamType.String,
          false,
        ),
        preferredJobCategory: deserializeParam(
          data['PreferredJobCategory'],
          ParamType.String,
          false,
        ),
        experience: deserializeParam(
          data['Experience'],
          ParamType.String,
          false,
        ),
        workType: deserializeParam(
          data['WorkType'],
          ParamType.String,
          false,
        ),
        salaryExpectation: deserializeParam(
          data['SalaryExpectation'],
          ParamType.String,
          false,
        ),
        preference: deserializeParam<String>(
          data['Preference'],
          ParamType.String,
          true,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        availability: deserializeParam(
          data['Availability'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['Location'],
          ParamType.String,
          false,
        ),
        preferredJobLocation: deserializeParam(
          data['PreferredJobLocation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmploymentAvailabilityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EmploymentAvailabilityStruct &&
        headline == other.headline &&
        highestQualification == other.highestQualification &&
        currentJobCategory == other.currentJobCategory &&
        preferredJobCategory == other.preferredJobCategory &&
        experience == other.experience &&
        workType == other.workType &&
        salaryExpectation == other.salaryExpectation &&
        listEquality.equals(preference, other.preference) &&
        photoUrl == other.photoUrl &&
        availability == other.availability &&
        location == other.location &&
        preferredJobLocation == other.preferredJobLocation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        headline,
        highestQualification,
        currentJobCategory,
        preferredJobCategory,
        experience,
        workType,
        salaryExpectation,
        preference,
        photoUrl,
        availability,
        location,
        preferredJobLocation
      ]);
}

EmploymentAvailabilityStruct createEmploymentAvailabilityStruct({
  String? headline,
  String? highestQualification,
  String? currentJobCategory,
  String? preferredJobCategory,
  String? experience,
  String? workType,
  String? salaryExpectation,
  String? photoUrl,
  String? availability,
  String? location,
  String? preferredJobLocation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EmploymentAvailabilityStruct(
      headline: headline,
      highestQualification: highestQualification,
      currentJobCategory: currentJobCategory,
      preferredJobCategory: preferredJobCategory,
      experience: experience,
      workType: workType,
      salaryExpectation: salaryExpectation,
      photoUrl: photoUrl,
      availability: availability,
      location: location,
      preferredJobLocation: preferredJobLocation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EmploymentAvailabilityStruct? updateEmploymentAvailabilityStruct(
  EmploymentAvailabilityStruct? employmentAvailability, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    employmentAvailability
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEmploymentAvailabilityStructData(
  Map<String, dynamic> firestoreData,
  EmploymentAvailabilityStruct? employmentAvailability,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (employmentAvailability == null) {
    return;
  }
  if (employmentAvailability.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      employmentAvailability.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final employmentAvailabilityData = getEmploymentAvailabilityFirestoreData(
      employmentAvailability, forFieldValue);
  final nestedData =
      employmentAvailabilityData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      employmentAvailability.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEmploymentAvailabilityFirestoreData(
  EmploymentAvailabilityStruct? employmentAvailability, [
  bool forFieldValue = false,
]) {
  if (employmentAvailability == null) {
    return {};
  }
  final firestoreData = mapToFirestore(employmentAvailability.toMap());

  // Add any Firestore field values
  employmentAvailability.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEmploymentAvailabilityListFirestoreData(
  List<EmploymentAvailabilityStruct>? employmentAvailabilitys,
) =>
    employmentAvailabilitys
        ?.map((e) => getEmploymentAvailabilityFirestoreData(e, true))
        .toList() ??
    [];
