// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AssociationStruct extends FFFirebaseStruct {
  AssociationStruct({
    String? association,
    String? role,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _association = association,
        _role = role,
        super(firestoreUtilData);

  // "association" field.
  String? _association;
  String get association => _association ?? '';
  set association(String? val) => _association = val;

  bool hasAssociation() => _association != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  static AssociationStruct fromMap(Map<String, dynamic> data) =>
      AssociationStruct(
        association: data['association'] as String?,
        role: data['role'] as String?,
      );

  static AssociationStruct? maybeFromMap(dynamic data) => data is Map
      ? AssociationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'association': _association,
        'role': _role,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'association': serializeParam(
          _association,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssociationStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssociationStruct(
        association: deserializeParam(
          data['association'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssociationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssociationStruct &&
        association == other.association &&
        role == other.role;
  }

  @override
  int get hashCode => const ListEquality().hash([association, role]);
}

AssociationStruct createAssociationStruct({
  String? association,
  String? role,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AssociationStruct(
      association: association,
      role: role,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AssociationStruct? updateAssociationStruct(
  AssociationStruct? associationStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    associationStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAssociationStructData(
  Map<String, dynamic> firestoreData,
  AssociationStruct? associationStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (associationStruct == null) {
    return;
  }
  if (associationStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && associationStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final associationStructData =
      getAssociationFirestoreData(associationStruct, forFieldValue);
  final nestedData =
      associationStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = associationStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAssociationFirestoreData(
  AssociationStruct? associationStruct, [
  bool forFieldValue = false,
]) {
  if (associationStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(associationStruct.toMap());

  // Add any Firestore field values
  associationStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAssociationListFirestoreData(
  List<AssociationStruct>? associationStructs,
) =>
    associationStructs
        ?.map((e) => getAssociationFirestoreData(e, true))
        .toList() ??
    [];
