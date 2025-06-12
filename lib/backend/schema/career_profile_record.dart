import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CareerProfileRecord extends FirestoreRecord {
  CareerProfileRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "EmploymentAvailability" field.
  bool? _employmentAvailability;
  bool get employmentAvailability => _employmentAvailability ?? false;
  bool hasEmploymentAvailability() => _employmentAvailability != null;

  // "AboutMe" field.
  String? _aboutMe;
  String get aboutMe => _aboutMe ?? '';
  bool hasAboutMe() => _aboutMe != null;

  // "WorkExperience" field.
  List<WorkExperienceStruct>? _workExperience;
  List<WorkExperienceStruct> get workExperience => _workExperience ?? const [];
  bool hasWorkExperience() => _workExperience != null;

  // "JobSkills" field.
  List<String>? _jobSkills;
  List<String> get jobSkills => _jobSkills ?? const [];
  bool hasJobSkills() => _jobSkills != null;

  // "Associations" field.
  List<AssociationStruct>? _associations;
  List<AssociationStruct> get associations => _associations ?? const [];
  bool hasAssociations() => _associations != null;

  // "CertificatesAwards" field.
  List<CertificateStruct>? _certificatesAwards;
  List<CertificateStruct> get certificatesAwards =>
      _certificatesAwards ?? const [];
  bool hasCertificatesAwards() => _certificatesAwards != null;

  // "CoverLetter" field.
  String? _coverLetter;
  String get coverLetter => _coverLetter ?? '';
  bool hasCoverLetter() => _coverLetter != null;

  // "CV" field.
  String? _cv;
  String get cv => _cv ?? '';
  bool hasCv() => _cv != null;

  // "ProjectsPortfolio" field.
  List<ProjectsPortfolioStruct>? _projectsPortfolio;
  List<ProjectsPortfolioStruct> get projectsPortfolio =>
      _projectsPortfolio ?? const [];
  bool hasProjectsPortfolio() => _projectsPortfolio != null;

  // "Education" field.
  List<EducationStruct>? _education;
  List<EducationStruct> get education => _education ?? const [];
  bool hasEducation() => _education != null;

  // "Language" field.
  List<LanguageStruct>? _language;
  List<LanguageStruct> get language => _language ?? const [];
  bool hasLanguage() => _language != null;

  void _initializeFields() {
    _employmentAvailability = snapshotData['EmploymentAvailability'] as bool?;
    _aboutMe = snapshotData['AboutMe'] as String?;
    _workExperience = getStructList(
      snapshotData['WorkExperience'],
      WorkExperienceStruct.fromMap,
    );
    _jobSkills = getDataList(snapshotData['JobSkills']);
    _associations = getStructList(
      snapshotData['Associations'],
      AssociationStruct.fromMap,
    );
    _certificatesAwards = getStructList(
      snapshotData['CertificatesAwards'],
      CertificateStruct.fromMap,
    );
    _coverLetter = snapshotData['CoverLetter'] as String?;
    _cv = snapshotData['CV'] as String?;
    _projectsPortfolio = getStructList(
      snapshotData['ProjectsPortfolio'],
      ProjectsPortfolioStruct.fromMap,
    );
    _education = getStructList(
      snapshotData['Education'],
      EducationStruct.fromMap,
    );
    _language = getStructList(
      snapshotData['Language'],
      LanguageStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Career_Profile');

  static Stream<CareerProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CareerProfileRecord.fromSnapshot(s));

  static Future<CareerProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CareerProfileRecord.fromSnapshot(s));

  static CareerProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CareerProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CareerProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CareerProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CareerProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CareerProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCareerProfileRecordData({
  bool? employmentAvailability,
  String? aboutMe,
  String? coverLetter,
  String? cv,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'EmploymentAvailability': employmentAvailability,
      'AboutMe': aboutMe,
      'CoverLetter': coverLetter,
      'CV': cv,
    }.withoutNulls,
  );

  return firestoreData;
}

class CareerProfileRecordDocumentEquality
    implements Equality<CareerProfileRecord> {
  const CareerProfileRecordDocumentEquality();

  @override
  bool equals(CareerProfileRecord? e1, CareerProfileRecord? e2) {
    const listEquality = ListEquality();
    return e1?.employmentAvailability == e2?.employmentAvailability &&
        e1?.aboutMe == e2?.aboutMe &&
        listEquality.equals(e1?.workExperience, e2?.workExperience) &&
        listEquality.equals(e1?.jobSkills, e2?.jobSkills) &&
        listEquality.equals(e1?.associations, e2?.associations) &&
        listEquality.equals(e1?.certificatesAwards, e2?.certificatesAwards) &&
        e1?.coverLetter == e2?.coverLetter &&
        e1?.cv == e2?.cv &&
        listEquality.equals(e1?.projectsPortfolio, e2?.projectsPortfolio) &&
        listEquality.equals(e1?.education, e2?.education) &&
        listEquality.equals(e1?.language, e2?.language);
  }

  @override
  int hash(CareerProfileRecord? e) => const ListEquality().hash([
        e?.employmentAvailability,
        e?.aboutMe,
        e?.workExperience,
        e?.jobSkills,
        e?.associations,
        e?.certificatesAwards,
        e?.coverLetter,
        e?.cv,
        e?.projectsPortfolio,
        e?.education,
        e?.language
      ]);

  @override
  bool isValidKey(Object? o) => o is CareerProfileRecord;
}
