// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProjectsPortfolioStruct extends FFFirebaseStruct {
  ProjectsPortfolioStruct({
    String? title,
    String? link,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _link = link,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  static ProjectsPortfolioStruct fromMap(Map<String, dynamic> data) =>
      ProjectsPortfolioStruct(
        title: data['title'] as String?,
        link: data['link'] as String?,
      );

  static ProjectsPortfolioStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectsPortfolioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'link': _link,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProjectsPortfolioStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProjectsPortfolioStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProjectsPortfolioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectsPortfolioStruct &&
        title == other.title &&
        link == other.link;
  }

  @override
  int get hashCode => const ListEquality().hash([title, link]);
}

ProjectsPortfolioStruct createProjectsPortfolioStruct({
  String? title,
  String? link,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProjectsPortfolioStruct(
      title: title,
      link: link,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProjectsPortfolioStruct? updateProjectsPortfolioStruct(
  ProjectsPortfolioStruct? projectsPortfolio, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    projectsPortfolio
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProjectsPortfolioStructData(
  Map<String, dynamic> firestoreData,
  ProjectsPortfolioStruct? projectsPortfolio,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (projectsPortfolio == null) {
    return;
  }
  if (projectsPortfolio.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && projectsPortfolio.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final projectsPortfolioData =
      getProjectsPortfolioFirestoreData(projectsPortfolio, forFieldValue);
  final nestedData =
      projectsPortfolioData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = projectsPortfolio.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProjectsPortfolioFirestoreData(
  ProjectsPortfolioStruct? projectsPortfolio, [
  bool forFieldValue = false,
]) {
  if (projectsPortfolio == null) {
    return {};
  }
  final firestoreData = mapToFirestore(projectsPortfolio.toMap());

  // Add any Firestore field values
  projectsPortfolio.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProjectsPortfolioListFirestoreData(
  List<ProjectsPortfolioStruct>? projectsPortfolios,
) =>
    projectsPortfolios
        ?.map((e) => getProjectsPortfolioFirestoreData(e, true))
        .toList() ??
    [];
