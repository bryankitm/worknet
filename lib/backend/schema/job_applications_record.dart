import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobApplicationsRecord extends FirestoreRecord {
  JobApplicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "job_id" field.
  DocumentReference? _jobId;
  DocumentReference? get jobId => _jobId;
  bool hasJobId() => _jobId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "applied_at" field.
  DateTime? _appliedAt;
  DateTime? get appliedAt => _appliedAt;
  bool hasAppliedAt() => _appliedAt != null;

  // "interview_date" field.
  DateTime? _interviewDate;
  DateTime? get interviewDate => _interviewDate;
  bool hasInterviewDate() => _interviewDate != null;

  // "rejection_reason" field.
  String? _rejectionReason;
  String get rejectionReason => _rejectionReason ?? '';
  bool hasRejectionReason() => _rejectionReason != null;

  // "cover_letter" field.
  String? _coverLetter;
  String get coverLetter => _coverLetter ?? '';
  bool hasCoverLetter() => _coverLetter != null;

  // "cv" field.
  String? _cv;
  String get cv => _cv ?? '';
  bool hasCv() => _cv != null;

  // "compRef" field.
  DocumentReference? _compRef;
  DocumentReference? get compRef => _compRef;
  bool hasCompRef() => _compRef != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _jobId = snapshotData['job_id'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _appliedAt = snapshotData['applied_at'] as DateTime?;
    _interviewDate = snapshotData['interview_date'] as DateTime?;
    _rejectionReason = snapshotData['rejection_reason'] as String?;
    _coverLetter = snapshotData['cover_letter'] as String?;
    _cv = snapshotData['cv'] as String?;
    _compRef = snapshotData['compRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('job_applications');

  static Stream<JobApplicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobApplicationsRecord.fromSnapshot(s));

  static Future<JobApplicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobApplicationsRecord.fromSnapshot(s));

  static JobApplicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobApplicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobApplicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobApplicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobApplicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobApplicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobApplicationsRecordData({
  DocumentReference? userId,
  DocumentReference? jobId,
  String? status,
  DateTime? appliedAt,
  DateTime? interviewDate,
  String? rejectionReason,
  String? coverLetter,
  String? cv,
  DocumentReference? compRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'job_id': jobId,
      'status': status,
      'applied_at': appliedAt,
      'interview_date': interviewDate,
      'rejection_reason': rejectionReason,
      'cover_letter': coverLetter,
      'cv': cv,
      'compRef': compRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobApplicationsRecordDocumentEquality
    implements Equality<JobApplicationsRecord> {
  const JobApplicationsRecordDocumentEquality();

  @override
  bool equals(JobApplicationsRecord? e1, JobApplicationsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.jobId == e2?.jobId &&
        e1?.status == e2?.status &&
        e1?.appliedAt == e2?.appliedAt &&
        e1?.interviewDate == e2?.interviewDate &&
        e1?.rejectionReason == e2?.rejectionReason &&
        e1?.coverLetter == e2?.coverLetter &&
        e1?.cv == e2?.cv &&
        e1?.compRef == e2?.compRef;
  }

  @override
  int hash(JobApplicationsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.jobId,
        e?.status,
        e?.appliedAt,
        e?.interviewDate,
        e?.rejectionReason,
        e?.coverLetter,
        e?.cv,
        e?.compRef
      ]);

  @override
  bool isValidKey(Object? o) => o is JobApplicationsRecord;
}
