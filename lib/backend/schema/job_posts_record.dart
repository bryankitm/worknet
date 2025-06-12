import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobPostsRecord extends FirestoreRecord {
  JobPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "employer_id" field.
  DocumentReference? _employerId;
  DocumentReference? get employerId => _employerId;
  bool hasEmployerId() => _employerId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "job_type" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  bool hasJobType() => _jobType != null;

  // "posted_at" field.
  DateTime? _postedAt;
  DateTime? get postedAt => _postedAt;
  bool hasPostedAt() => _postedAt != null;

  // "deadline" field.
  DateTime? _deadline;
  DateTime? get deadline => _deadline;
  bool hasDeadline() => _deadline != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "company_id" field.
  DocumentReference? _companyId;
  DocumentReference? get companyId => _companyId;
  bool hasCompanyId() => _companyId != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "salary" field.
  double? _salary;
  double get salary => _salary ?? 0.0;
  bool hasSalary() => _salary != null;

  // "photos" field.
  List<String>? _photos;
  List<String> get photos => _photos ?? const [];
  bool hasPhotos() => _photos != null;

  // "viewers" field.
  List<DocumentReference>? _viewers;
  List<DocumentReference> get viewers => _viewers ?? const [];
  bool hasViewers() => _viewers != null;

  // "Qualification" field.
  String? _qualification;
  String get qualification => _qualification ?? '';
  bool hasQualification() => _qualification != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "career_level" field.
  String? _careerLevel;
  String get careerLevel => _careerLevel ?? '';
  bool hasCareerLevel() => _careerLevel != null;

  // "requirements" field.
  List<String>? _requirements;
  List<String> get requirements => _requirements ?? const [];
  bool hasRequirements() => _requirements != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  void _initializeFields() {
    _employerId = snapshotData['employer_id'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as String?;
    _jobType = snapshotData['job_type'] as String?;
    _postedAt = snapshotData['posted_at'] as DateTime?;
    _deadline = snapshotData['deadline'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
    _companyId = snapshotData['company_id'] as DocumentReference?;
    _duration = snapshotData['duration'] as String?;
    _salary = castToType<double>(snapshotData['salary']);
    _photos = getDataList(snapshotData['photos']);
    _viewers = getDataList(snapshotData['viewers']);
    _qualification = snapshotData['Qualification'] as String?;
    _gender = snapshotData['gender'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _careerLevel = snapshotData['career_level'] as String?;
    _requirements = getDataList(snapshotData['requirements']);
    _country = snapshotData['country'] as String?;
    _city = snapshotData['city'] as String?;
    _website = snapshotData['website'] as String?;
    _experience = snapshotData['experience'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('job_posts');

  static Stream<JobPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobPostsRecord.fromSnapshot(s));

  static Future<JobPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobPostsRecord.fromSnapshot(s));

  static JobPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobPostsRecordData({
  DocumentReference? employerId,
  String? title,
  String? description,
  String? location,
  String? jobType,
  DateTime? postedAt,
  DateTime? deadline,
  String? status,
  DocumentReference? categoryRef,
  DocumentReference? companyId,
  String? duration,
  double? salary,
  String? qualification,
  String? gender,
  DateTime? startDate,
  String? careerLevel,
  String? country,
  String? city,
  String? website,
  String? experience,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'employer_id': employerId,
      'title': title,
      'description': description,
      'location': location,
      'job_type': jobType,
      'posted_at': postedAt,
      'deadline': deadline,
      'status': status,
      'categoryRef': categoryRef,
      'company_id': companyId,
      'duration': duration,
      'salary': salary,
      'Qualification': qualification,
      'gender': gender,
      'start_date': startDate,
      'career_level': careerLevel,
      'country': country,
      'city': city,
      'website': website,
      'experience': experience,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobPostsRecordDocumentEquality implements Equality<JobPostsRecord> {
  const JobPostsRecordDocumentEquality();

  @override
  bool equals(JobPostsRecord? e1, JobPostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.employerId == e2?.employerId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.jobType == e2?.jobType &&
        e1?.postedAt == e2?.postedAt &&
        e1?.deadline == e2?.deadline &&
        e1?.status == e2?.status &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.companyId == e2?.companyId &&
        e1?.duration == e2?.duration &&
        e1?.salary == e2?.salary &&
        listEquality.equals(e1?.photos, e2?.photos) &&
        listEquality.equals(e1?.viewers, e2?.viewers) &&
        e1?.qualification == e2?.qualification &&
        e1?.gender == e2?.gender &&
        e1?.startDate == e2?.startDate &&
        e1?.careerLevel == e2?.careerLevel &&
        listEquality.equals(e1?.requirements, e2?.requirements) &&
        e1?.country == e2?.country &&
        e1?.city == e2?.city &&
        e1?.website == e2?.website &&
        e1?.experience == e2?.experience;
  }

  @override
  int hash(JobPostsRecord? e) => const ListEquality().hash([
        e?.employerId,
        e?.title,
        e?.description,
        e?.location,
        e?.jobType,
        e?.postedAt,
        e?.deadline,
        e?.status,
        e?.categoryRef,
        e?.companyId,
        e?.duration,
        e?.salary,
        e?.photos,
        e?.viewers,
        e?.qualification,
        e?.gender,
        e?.startDate,
        e?.careerLevel,
        e?.requirements,
        e?.country,
        e?.city,
        e?.website,
        e?.experience
      ]);

  @override
  bool isValidKey(Object? o) => o is JobPostsRecord;
}
